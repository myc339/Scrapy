//
//  item.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/23.
//  Copyright © 2020 northeastern. All rights reserved.
//

import Foundation
class item{
    let markid:String
    var itemid:String
    var name:String
    var itemImage:String
    var itemPrice:String
    var itemSalesStory:String
    var validity:String
    var store:String
    var link:String
    init(link:String,markid:String,name:String,itemid:String,itemImage:String,itemPrice:String,itemSalesStory:String,validity:String,store:String) {
        self.markid = markid
        self.name = name
        self.itemid = itemid
        self.itemImage = itemImage
        self.itemPrice = itemPrice
        self.itemSalesStory = itemSalesStory
        self.validity = validity
        self.store = store
        self.link = link
    }
}
