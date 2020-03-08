# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


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
    SaleStory = scrapy.Field()
    Coupon = scrapy.Field()
    pass