//
//  StoreInfosTableViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/16.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
import AWSAppSync


class StoreInfosTableViewController: UITableViewController {
    
    var appSyncClient: AWSAppSyncClient?
    
    var nextToken: String?
    var fixedLimit: Int = 20
    var auth = false
    var isLoadInProgress: Bool = false
    var storeItemList:[ListStopshopsQuery.Data.ListStopshop.Item?] = []
    var managedObjectContext: NSManagedObjectContext? = nil
    
    lazy var StorerefreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self,
                                 action: #selector(handleRefresh(_:)),
                                 for: .valueChanged)

        return refreshControl
    }()

    @objc func handleRefresh(_ refreshControl: UIRefreshControl) {
        print("refresh controll")
        nextToken = nil
        FetchALlStoreItemsUsingCachePolicy(.fetchIgnoringCacheData)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        managedObjectContext = appDelegate.persistentContainer.viewContext
        FetchALlStoreItemsUsingCachePolicy(.returnCacheDataAndFetch)
        
        guard let user = try! managedObjectContext?.fetch(UserInfo.fetchRequest()) as? [UserInfo] else{return }
        
        guard let email = user.first?.emailaddress,let pwd = user.first?.password else{
            self.auth = true
            return}
        
        
        
    }
    
    @IBAction  func prepareForUnwind( unwindSegue: UIStoryboardSegue) {
           
       }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return storeItemList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        
        guard let Item = self.storeItemList[indexPath.row] else{
            return cell
        }
        cell.textLabel?.text  = "StoreCode:\(Item.storeCode),ItemId:\(Item.itemId)"
        cell.detailTextLabel?.text = Item.item
        // Configure the cell...

        return cell
    }
    
    // pagination
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if !isLoadInProgress,
            indexPath.row > storeItemList.count - 2,
            nextToken?.count ?? 0 > 0 {
            FetchALlStoreItemsUsingCachePolicy(.fetchIgnoringCacheData)
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        guard let id = segue.identifier else {return }
        if id == "UserDetails"{
            let nav = self.navigationController //grab an instance of the current navigationController
//            self.performSegue(withIdentifier: "UserDetails", sender: self)
            self.navigationItem.title = ""
           
            
        }
//        if id == "RootSegue"{
//            self.performSegue(withIdentifier: "RootSegue", sender: self)
//        }
    }
    
    
//    
    
    
    
    
    func FetchALlStoreItemsUsingCachePolicy(_ cachePolicy: CachePolicy){
        if isLoadInProgress{
            return
        }
        isLoadInProgress = true
//        print("fetching")
        StorerefreshControl.beginRefreshing()
        
        let listQuery = ListStopshopsQuery( filter: TableStopshopFilterInput(storeCode:TableStringFilterInput(eq:"0433")),limit: fixedLimit, nextToken: nextToken)
        appSyncClient?.fetch(query: listQuery,cachePolicy: cachePolicy){ result,error in
            
            if let error = error{
                print("Error fetching data: \(error)")
                return
            }
            
            // Remove existing records if we're either loading from cache, or loading fresh (e.g., from a refresh)
            if self.nextToken == nil, cachePolicy == .returnCacheDataAndFetch {
                self.storeItemList.removeAll()
            }
          
            
            let existingKeys = Set( self.storeItemList.compactMap{
                           $0?.itemId
                       })
            
            let newItems = result?.data?.listStopshops?.items?.compactMap{$0}.filter{
                !existingKeys.contains($0.itemId)
            }
            print("Fetching Data")
//            result?.data?.listStopshops?.items?.forEach{
//                print("StoreCode:\(($0?.storeCode)!),ItemID:\(($0?.itemId)!),Item:\(($0?.item)!)" )
//            }
            
            
            self.storeItemList.append(contentsOf: newItems ?? [])

            self.nextToken = result?.data?.listStopshops?.nextToken
            
            self.isLoadInProgress = false
            
            self.tableView.reloadData()
            
        }
    }
}


