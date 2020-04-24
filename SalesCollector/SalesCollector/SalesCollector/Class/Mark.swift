//
//  File.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/23.
//  Copyright © 2020 northeastern. All rights reserved.
//

import Foundation
class Usermark{
    let userid:String
    var items:[item]
    var shareid:[String]
    init(id:String,items:[item],shareid:[String]) {
        self.userid = id
        self.items = items
        self.shareid = shareid
    }
}
