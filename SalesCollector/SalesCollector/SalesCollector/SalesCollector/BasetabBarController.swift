//
//  BasetabBarController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/23.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
import AWSAppSync

class BasetabBarController: UITabBarController {
    var managedObjectContext: NSManagedObjectContext? = nil
    var appSyncClient: AWSAppSyncClient?
    var tabbarController: UITabBarController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        managedObjectContext = appDelegate.persistentContainer.viewContext
        
        // Do any additional setup after loading the view.
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == 3{
           
        }
        
    }
    

    

}
