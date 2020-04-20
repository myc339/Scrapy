import scrapy
# from twisted.internet import reactor

from scrape_stopshop.spiders.spider import Stopshop
from scrapy.crawler import CrawlerProcess
from scrapy.utils.project import get_project_settings
import logging

# import os


def run(event, context):

    spider = event['spider']
    spider_class_name = spider.title()
    scrapy_class = globals()[spider_class_name]

    settings = get_project_settings()
    # os.environ['SCRAPY_SETTINGS_MODULE'] = 'scrapy.project.settings'
    # settings_module_path = os.environ['SCRAPY_SETTINGS_MODULE']
    # settings.setmodule(settings_module_path, priority='project')
    # crawler = Crawler(settings)

    process = CrawlerProcess(settings,{
        'USER_AGENT': 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)'
    })
    logger = logging.getLogger()
    logger.setLevel(logging.INFO)
    logger.info("starting crwal datas!!")
    # log.start(loglevel=log.INFO)
    process.crawl(scrapy_class)
    process.start()
# def lambda_handler(event,context):
    

#     run(event,'')

if __name__ == "__main__":
    event = {
        'spider': 'stopshop'
    }
   
    run(event,'')
    # lambda_handler(None, None)