# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import json
import codecs
import pymongo 
from scrape_stopshop.items import ScrapeStopshopItem,StopShopStore
class MongoPipeline(object):

    collection_name = 'StopShop'

    #, mongo_uri, mongo_db
    def __init__(self, mongo_uri, mongo_db):
        self.file = codecs.open('items.json', 'w', encoding='utf-8')
        self.mongo_uri = mongo_uri
        self.mongo_db = mongo_db

    @classmethod
    def from_crawler(cls, crawler):
        return cls(
           mongo_uri=crawler.settings.get('MONGO_URI'),
           mongo_db=crawler.settings.get('MONGO_DATABASE')
        )

    def open_spider(self, spider):
        self.client = pymongo.MongoClient(self.mongo_uri)
        self.db = self.client[self.mongo_db]

    def close_spider(self, spider):
        self.file.close()
        self.client.close()
    def process_item(self, item, spider):
        # if isinstance(item,StopShopStore):
        #     item["postalCode"] = "12312434"
        storeCode = "".join(item["storeCode"])
        if item["category"].casefold() ==  "Seafood".casefold():
            self.db["Seafood_"+storeCode].insert_one(dict(item))
        if item["category"].casefold() == "Grocery".casefold():
            self.db["Grocery_"+str(storeCode)].insert_one(dict(item))
        if item["category"].casefold() == "Frozen".casefold():
            self.db["Frozen_"+storeCode].insert_one(dict(item))
        if item["category"].casefold() == "Beverages".casefold():
            self.db["Beverages_"+storeCode].insert_one(dict(item))
        if item["category"].casefold() == "Bakery".casefold():
            self.db["Bakery_"+storeCode].insert_one(dict(item))
        if item["category"].casefold() == "Produce".casefold():
            self.db["Produce_"+storeCode].insert_one(dict(item))
        if item["category"].casefold() == "Meat".casefold():
            self.db["Meat_"+storeCode].insert_one(dict(item))
        if item["category"].casefold() == "Household Supplies".casefold():
            self.db["HouseholdSupplies_"+storeCode].insert_one(dict(item))
        if item["category"].casefold() == "Deli".casefold():
            self.db["Deli_"+storeCode].insert_one(dict(item))
        if item["category"].casefold() == "Dairy".casefold():
            self.db["Dairy_"+storeCode].insert_one(dict(item))
        if item["category"].casefold() == "Floral".casefold():
            self.db["Floral_"+storeCode].insert_one(dict(item))   
        if item["category"].casefold() == "Other".casefold():
            self.db["Other_"+storeCode].insert_one(dict(item))
        line = json.dumps(dict(item), ensure_ascii=False) + ",\n"
        self.file.write(line)
        return item
