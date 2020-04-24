//
//  ItemDetails.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/23.
//  Copyright © 2020 northeastern. All rights reserved.
//

import Foundation
class ItemDetails{
    var category:String
    var items:[ListStopshopsQuery.Data.ListStopshop.Item?]
    init(_ category:String,item:[ListStopshopsQuery.Data.ListStopshop.Item?]) {
        self.category = category
        self.items = item
    }
//    func CheckCategoryIsExist()->Bool{
//        if
//    }
}
