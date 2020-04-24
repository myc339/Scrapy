//
//  StoreDetail.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/21.
//  Copyright © 2020 northeastern. All rights reserved.
//

import Foundation
class StoreDetails{
    let StoreCode:String
    var items:[ListStopshopsQuery.Data.ListStopshop.Item?]
    init(storeCode:String,items:[ListStopshopsQuery.Data.ListStopshop.Item?]) {
        self.StoreCode = storeCode
        self.items = items
    }
}
