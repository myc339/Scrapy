# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy

class StopShopStore(scrapy.Item):
    #items = scrapy.Field()
    postalCode = scrapy.Field()
    storeCode = scrapy.Field()
#class StopShopCategory(scrapy.Item):
 #   category = scrapy.Field()
  #  Items = scrapy.Field()
class ScrapeStopshopItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    Id = scrapy.Field()
    category = scrapy.Field()
    Item = scrapy.Field()
    ImageSrc = scrapy.Field()
    PriceTag = scrapy.Field()
    validity = scrapy.Field()
    item_disclaimer_text = scrapy.Field()
    item_description = scrapy.Field()
    SalesStory = scrapy.Field()
    Coupon = scrapy.Field()
    link = scrapy.Field()
    storeCode = scrapy.Field()
    pass
