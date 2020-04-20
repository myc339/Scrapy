# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import json
import codecs
# import pymongo 
# from scrapy_dynamodb import DynamoDbPipeline
import boto3
from scrape_stopshop.items import ScrapeStopshopItem
class MongoPipeline(object):

    collection_name = 'StopShop'

    #, mongo_uri, mongo_db
    def __init__(self,aws_id,aws_key):
        # self.file = codecs.open('result.json', 'w', encoding='utf-8')
        
       
        self.aws_id = aws_id
        self.aws_key = aws_key

    @classmethod
    def from_crawler(cls, crawler):
        return cls(
           aws_id=crawler.settings.get('AWS_ACCESS_KEY_ID'),
           aws_key=crawler.settings.get('AWS_SECRET_ACCESS_KEY')
        )

    # def open_spider(self, spider):
        
        # self.client = pymongo.MongoClient(self.mongo_uri)
    #     self.db = self.client[self.mongo_db]

    # def close_spider(self, spider):
    #     self.file.close()
        # self.client.close()
    def process_item(self, item, spider):
        dynamodb = boto3.resource('dynamodb',region_name="us-east-1",
        aws_access_key_id=self.aws_id,aws_secret_access_key= self.aws_key)
        table = dynamodb.Table('stopshop')
        print("saving",item['Item'])
        table.put_item(
            Item={
                'storeCode':item["storeCode"],
                'ItemId':item["ItemId"],
                'category': item['category'],
                'Item':item['Item'],
                'ImageSrc':item['ImageSrc'],
                'PriceTag': item['PriceTag'],
                'validity':item['validity'],
                'itemDisclaimerText':item['item_disclaimer_text'],
                'itemDescription': item['item_description'],
                'SalesStory':item['SalesStory'], 
                'Coupon':item['Coupon'],
                'link':item['link'] 
            }
        )
        # line = json.dumps(dict(item), ensure_ascii=False) + ",\n"
        # self.file.write(line)
        return item
