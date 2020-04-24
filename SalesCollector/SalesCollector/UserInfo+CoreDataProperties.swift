//
//  UserInfo+CoreDataProperties.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/21.
//  Copyright © 2020 northeastern. All rights reserved.
//
//

import Foundation
import CoreData


extension UserInfo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserInfo> {
        return NSFetchRequest<UserInfo>(entityName: "UserInfo")
    }

    @NSManaged public var address: String?
    @NSManaged public var emailaddress: String?
    @NSManaged public var id: String?
    @NSManaged public var password: String?
    @NSManaged public var name: String?

}
