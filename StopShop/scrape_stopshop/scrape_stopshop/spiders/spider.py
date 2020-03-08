import scrapy


class QuotesSpider(scrapy.Spider):
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
        # items = {}
        for item in response.xpath('//div[@class="items-list"]/div[position()>1]'): 
            # lis = 
            item_category=item.xpath(".//h3/text()").get()
            # self.items[item_category] ={}
            # items[item_category] ={{"Product{}".format(i): node.xpath('./div[@class="item-name"]/text()').get() for i,node in enumerate(item.xpath('./ul/li'))}
            for li in item.xpath("./ul/li"):
                id = li.xpath('./a/@itemid').get()
                item = li.xpath('./div[@class="item-name"]/text()').get()
                self.items[item] = {"Id":id,"category":item_category,"Item":item}
                yield scrapy.Request(url='https://circular.stopandshop.com/flyer_item/tabbed/'+id+'?type=2&locale=en-US&store_code=0433&show_shopping_list_integration=1' , callback=self.Second_parse,meta={'item':self.items[item] })
        # yield self.items
    def Second_parse(self,response):
        
        ImageSrc = response.xpath('//div[@class="v2_item_image_wrapper"]//img/@src').get()
        PriceTag = ''.join(response.xpath('//div[@class="price"]//span/text()').getall())
        validity = response.xpath('normalize-space(//div[@class="validity"]/text())').get()
        item_disclaimer_text = response.xpath('//div[@class="flyer_item_disclaimer_text"]/p/text()').get()
        coupon = response.xpath('//div[@class="v2_coupons_wrapper"]')
        item_description =  ''.join(response.xpath('//div[@class="flyer_item_description clearfix"]//p/text()').getall())
        SalesStory = response.xpath('//div[@class="sale_story"]/text()').get()
        
        response.meta.get("item").update({"ImageSrc":ImageSrc,"PriceTag":PriceTag,"validity":validity,\
            "item_disclaimer_text":item_disclaimer_text,"Description":item_description,\
            "SalesStory":SalesStory,\
            "Coupon":{"Id":coupon.xpath("./div[1]/@coupon_id").get(),\
                "CouponDetail":''.join(coupon.xpath('//div[@class="v2_coupon_details"]//div/text()').getall())+" "+''.join(\
                    coupon.xpath('//div[@class="v2_coupon_details"]//p/text()').getall()),\
                    "CouponDiscalimer":coupon.xpath('//p[@class="disclaimer"]/text()').get()}})
        # print(ImageSrc)

        yield   response.meta.get("item")
