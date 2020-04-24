//
//  FirstViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/15.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
import AWSAppSync

class FirstViewController: UIViewController {
    
    @IBOutlet weak var TxtView: UITextView!
    var appSyncClient: AWSAppSyncClient?
    
    var nextToken: String?
    var fixedLimit: Int = 50 // predefined pagination size
    
    var isLoadInProgress: Bool = false
    var storeItemList:[ListStopshopsQuery.Data.ListStopshop.Item?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        // Do any additional setup after loading the view.
    }
    
    

    
//
}

