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
        
        runStoreQuery()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func InsertBtn(_ sender: UIButton) {
        print("inserting")
//        runMutation()
    }
    @IBAction func RetrieveBtn(_ sender: UIButton) {
        print("retrieving data")
//        TxtView.text = "dsd"
        print(nextToken?.count ?? 0)
        
//        while self.nextToken?.count ?? 0 > 0{
//            print(nextToken?.count)
//            runStoreQuery()
//        }

//            runStoreQuery()
        
        
    }
    
//    func runQuery(){
//        appSyncClient.
//    }
    
    
    
    func runStoreQuery(){
//        let filter =
//        appSyncClient?.fetch(query:)
        let listQuery = ListStopshopsQuery(filter: TableStopshopFilterInput(storeCode: TableStringFilterInput(eq:"2411")), limit: fixedLimit, nextToken: self.nextToken)
        appSyncClient?.fetch(query: listQuery, cachePolicy: .returnCacheDataAndFetch) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            if self.nextToken == nil{
                
            }
            self.nextToken = result?.data?.listStopshops?.nextToken
            print("Query complete.")
//            result?.data?.listStopshops?.nextToken?
//            print(result?.data?.listStopshops?.items?.count)
            for result in (result?.data?.listStopshops?.items)!{
                self.TxtView.text += "ItemId:\(result!.itemId)\n"
            }
            self.TxtView.text += "----------\n"
            if self.nextToken?.count ?? 0 > 0{
                self.runStoreQuery()
            }
//            result?.data?.listStopshops?.items!.forEach { print(($0?.itemId)! + " " + ($0?.storeCode)! + " " + ($0?.item)!) }
        }
    }
    
//
}

