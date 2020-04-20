import scrapy
from wholefood.items import WholefoodItem
from wholefood.items import Book
class QuotesSpider(scrapy.Spider):
    name = "quotes"
    def start_requests(self):
        urls = [
            'http://quotes.toscrape.com/page/1/'
        ]
        for url in urls:
            yield scrapy.Request(url=url, callback=self.parse,meta={'authors':self.authors})
       # yield self.authors
    def parse(self, response): 
        #yield self.authors
        
        for quote in response.css('div.quote'):
            book = Book()
            text = quote.css('span.text::text').get()
            author =  quote.css('span small::text').get()
            tags =  quote.css('div.tags a.tag::text').getall()
            book["text"] = text 
            book["tags"] = ','.join(map(str,tags))
            
            response.meta.get("authors")["author"] = author
            response.meta.get("authors")["book"] = book
            #yield authors
       
            

        next_page = response.css('li.next a::attr(href)').get()
        if next_page is not None:
            yield response.follow(next_page, callback=self.parse)