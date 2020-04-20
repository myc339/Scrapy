import scrapy
from scrapy.crawler import CrawlerProcess
from scrape_stopshop.items import ScrapeStopshopItem
try:
    from urllib.parse import urlparse, parse_qs
except ImportError:
    from urlparse import urlparse, parse_qs
# from urllib.parse import urlparse
# from urllib.parse import parse_qs
class Stopshop(scrapy.Spider):
    name = "stopshop"

   
        
    downloda_delay = 15 
    items = {}
    # Infourl = 'https://circular.stopandshop.com/flyer_item/tabbed/''?type=2&locale=en-US&store_code=0433&show_shopping_list_integration=1' 
    def start_requests(self):
        urls = [
            'https://circular.stopandshop.com/flyers/stopandshop-weekly/grid_view/544788?type=2&show_shopping_list_integration=1&postal_code=02155&use_requested_domain=true&store_code=0433&is_store_selection=true&auto_flyer&sort_by'

        ]
        for url in urls:
            yield scrapy.Request(url=url, callback=self.parse)
    # start_urls=[
    #     # 'https://circular.stopandshop.com/flyers/stopandshop-weekly/grid_view/544787?type=2&use_requested_domain=true&show_shopping_list_integration=1'
    # ]
    # def start_requests(self):
    #     urls = [
    #         'http://quotes.toscrape.com/page/1/',
    #         'http://quotes.toscrape.com/page/2/',
    #     ]
    #     for url in urls:
    #         yield scrapy.Request(url=url, callback=self.parse)

    def parse(self, response):
        items = {}
        
        # stopStore = StopShopStore()
        url = urlparse(response.request.url)
        storeCode = parse_qs(url.query)['store_code']
        # stopStore["postalCode"] = parse_qs(url.query)['postal_code']
        # yield stopStore

        for item in response.xpath('//div[@class="items-list"]/div[position()>1]'): 
            # lis = 
            
            item_category=item.xpath(".//h3/text()").get()
            #catergory["category"] = item_category
            
            #yield catergory
            # self.items[item_category] ={}
            # items[item_category] ={{"Product{}".format(i): node.xpath('./div[@class="item-name"]/text()').get() for i,node in enumerate(item.xpath('./ul/li'))}
            for li in item.xpath("./ul/li"):
                id = li.xpath('./a/@itemid').get()
                #print(id)
                item = li.xpath('./div[@class="item-name"]/text()').get()
                self.items[item] = {"Id":id,"category":item_category,"Item":item,"link":response.request.url,"storeCode":parse_qs(url.query)['store_code']}
                yield  scrapy.Request(url='https://circular.stopandshop.com/flyer_item/tabbed/'+id+'?type=2&locale=en-US&store_code=0433&show_shopping_list_integration=1' , callback=self.Second_parse,meta={'item':self.items[item] })
        
    def Second_parse(self,response):
        
        Items = ScrapeStopshopItem()
        ImageSrc = response.xpath('//div[@class="v2_item_image_wrapper"]//img/@src').get()
        PriceTag = ''.join(response.xpath('//div[@class="price"]//span/text()').getall())
        validity = response.xpath('normalize-space(//div[@class="validity"]/text())').get()
        item_disclaimer_text = ''.join(response.xpath('normalize-space(//div[@class="flyer_item_disclaimer_text"]/p[descendant-or-self::text()])').getall())
        coupon = response.xpath('//div[@class="v2_coupons_wrapper"]')
        item_description =  ''.join(response.xpath('normalize-space(//div[@class="flyer_item_description clearfix"]//p[descendant-or-self::text()])').getall())
        SalesStory = response.xpath('//div[@class="sale_story"]/text()').get()
        
        Items["ItemId"] = response.meta.get("item")["Id"]
        Items["Item"] = response.meta.get("item")["Item"]
        Items["category"] = response.meta.get("item")["category"]
        if ImageSrc is not None:
            Items["ImageSrc"] = ImageSrc
        else:
            Items["ImageSrc"] = "No Links"
        Items["validity"] = validity or 'No Contents'
        Items["item_disclaimer_text"] = item_disclaimer_text or 'No Contents'
        if coupon.xpath("./div[1]/@coupon_id").get() is not None:
            Items["Coupon"] = {"Id":coupon.xpath("./div[1]/@coupon_id").get(),\
                "CouponDetail":''.join(coupon.xpath('//div[@class="v2_coupon_details"]//div/text()').getall()).strip()+" "+''.join(\
                    coupon.xpath('normalize-space(//div[@class="v2_coupon_details"]//p/text())').getall()).strip(),\
                    "CouponDiscalimer":coupon.xpath('normalize-space(//p[@class="disclaimer"]/text())').get()}
        else:
            Items["Coupon"] = "No Availables"
        Items["item_description"] = item_description or 'No Contents'
        if SalesStory is not None:
            Items["SalesStory"] = SalesStory
        else:
            Items["SalesStory"] = "No Contents"
        Items["PriceTag"] = PriceTag or 'No Contents'
        Items["link"] =  response.meta.get("item")["link"]
        Items["storeCode"] = "".join(response.meta.get("item")["storeCode"])
        # response.meta.get("item").update({"ImageSrc":ImageSrc,"PriceTag":PriceTag,"validity":validity,\
        #     "item_disclaimer_text":item_disclaimer_text,"Description":item_description,\
        #     "SalesStory":SalesStory,\
        #     "Coupon":{"Id":coupon.xpath("./div[1]/@coupon_id").get(),\
        #         "CouponDetail":''.join(coupon.xpath('//div[@class="v2_coupon_details"]//div/text()').getall().strip())+" "+''.join(\
        #             coupon.xpath('//div[@class="v2_coupon_details"]//p/text()').getall().strip()),\
        #             "CouponDiscalimer":coupon.xpath('//p[@class="disclaimer"]/text()').get()}})
        # print(ImageSrc)
        
        return   Items
