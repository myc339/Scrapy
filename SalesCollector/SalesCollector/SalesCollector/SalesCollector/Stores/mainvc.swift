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
    
    var selectedItem:ListStopshopsQuery.Data.ListStopshop.Item?
    var nextToken: String?
    var storeids:[String] = []
    var fixedLimit: Int = 2
    var storeDetails:[StoreDetails] = []
    var itemsCount:[ListStopshopsQuery.Data.ListStopshop.Item?] = []
    var itemToken: String? = nil
    var auth = false
    var isLoadInProgress: Bool = false
    var StoreList:[ListStoreInfosQuery.Data.ListStoreInfo.Item?] = []
    var managedObjectContext: NSManagedObjectContext? = nil
    var selectCell: IndexPath?
    
    
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
        FetchALlStoreUsingCachePolicy(.fetchIgnoringCacheData)
    }
    
    override func viewDidAppear(_ animated: Bool) {
         popLoading()
    }
    
    
    func popLoading(){
        let popCouponvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popLoading")as! LoadingProgressViewController
        //        popCouponvc.details  = item.first??.coupon
        self.addChild(popCouponvc)
        //        print(tableView.contentOffset.y)
        popCouponvc.view.frame =  CGRect(x: 0, y:   200, width:self.view.frame.width, height: self.view.frame.height*0.4)
        self.view.addSubview(popCouponvc.view)
        popCouponvc.didMove(toParent: self)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.FetchALlStoreUsingCachePolicy(.returnCacheDataAndFetch)
            
            popCouponvc.view.removeFromSuperview()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        managedObjectContext = appDelegate.persistentContainer.viewContext
        
        
        popLoading()
        
    }
    
    @IBAction func viewAllbtn(_ sender: UIButton) {
        
          performSegue(withIdentifier: "viewAllSegue", sender: sender)
        
//        let alert = UIAlertController(title: "test", message: "\(storeDetails.count)", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil   ))
//        storeDetails.forEach{
//            print("StoreCode:\($0.StoreCode),number:\($0.items.count)")
//        }
//        self.present(alert,animated: true,completion: nil)
        
    }
    @IBAction  func prepareForUnwind( unwindSegue: UIStoryboardSegue) {
           
       }
    


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(StoreList.count)
        return StoreList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as? CustomTableViewCell
            else{
                fatalError("unable to create custom table view cell")
        }
        guard let store = self.StoreList[indexPath.row] else{
            return cell
        }
        cell.StoreTag.text = "\(store.storeName)(\(store.storeAddress),\(store.storeCode))"
        cell.collectionView.parentTableViewIndexPath = indexPath
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140*2.5
    }
    // pagination
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        guard let tableViewCell = cell as? CustomTableViewCell else { return }

        tableViewCell.setCollectionViewDataSourceDelegate(dataSourceDelegate: self, forRow: indexPath.row)
//        print("Row:\(indexPath.row)")
//        print("StoreNumber:\(StoreList.count)")
//        print("")
        if !isLoadInProgress,
            indexPath.row > StoreList.count - 2 ,
            nextToken?.count ?? 0 > 0 {
            FetchALlStoreUsingCachePolicy(.fetchIgnoringCacheData)
        }
        
    }
    
    
//    
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        guard let user = try! managedObjectContext?.fetch(UserInfo.fetchRequest()) as? [UserInfo] else{return false }
//        
////        guard let email = user.first?.emailaddress,let pwd = user.first?.password else{
////           return false}
//        print("show profile")
//        
//        if identifier == "loginsegue"{
//            
//        }else{
//            return false
//        }
//        print(identifier)
////        if identifier == "viewAllSegue"{
////            return true
////        }
//        return false
//    }
    
    
    func FetchAllStoreItems(){
        print("call Fetch Store Items")
//        print("count:\(StoreList.count)")
        let SearchStoreIds = Set(StoreList.compactMap{
            $0?.storeCode
        })
        print("ids:\(SearchStoreIds)")
//        print(storeids)
        let NewId = SearchStoreIds.filter{
            !storeids.contains($0)
        }
        print("newIds:\(NewId)")
        storeids.append(contentsOf: NewId)
        NewId.forEach{
            print("StoreCode:\($0)")}
        NewId.forEach({
            fetchRandom10ItemData($0,nil)
        })
        
    }
    func fetchRandom10ItemData(_ StoreCode:String,_ Token:String?){
        print("Retrieve:\(StoreCode)")
        let listQuery =  ListStopshopsQuery(filter:TableStopshopFilterInput(storeCode:TableStringFilterInput(eq:StoreCode)),limit:1000,nextToken: itemToken )
        
        appSyncClient?.fetch(query: listQuery,cachePolicy: .fetchIgnoringCacheData){result,error in
            if let error = error{
                print("Error fetching data: \(error)")
                return
            }
            
            let newItem = result?.data?.listStopshops?.items?.compactMap{$0}
            let store = self.storeDetails.filter{
                $0.StoreCode == StoreCode
            }.first
            print("SelectStoreCode:\(store?.StoreCode)")
            if newItem?.count != 0{
                for _ in 0...10{
                    var item = newItem?.randomElement()
                    print("item:\(item?.item)")
                    store!.items.append(item)
//                    store!.items.append(newItem?.randomElement())
//                    store!.items.append(newItem?.randomElement())
                }
            }

            if  store!.items.count <= 10 && (result?.data?.listStopshops?.nextToken != nil){
                self.fetchRandom10ItemData(StoreCode,result?.data?.listStopshops?.nextToken)
            }

        }
    }
    
    func FetchALlStoreUsingCachePolicy(_ cachePolicy: CachePolicy){
        if isLoadInProgress{
            return
        }
        isLoadInProgress = true
        StorerefreshControl.beginRefreshing()
        
        let listQuery = ListStoreInfosQuery( limit: fixedLimit, nextToken: nextToken)
        appSyncClient?.fetch(query: listQuery,cachePolicy: cachePolicy){ result,error in
            
            if let error = error{
                print("Error fetching data: \(error)")
                return
            }
            
            // Remove existing records if we're either loading from cache, or loading fresh (e.g., from a refresh)
            if self.nextToken == nil, cachePolicy == .returnCacheDataAndFetch {
                self.StoreList.removeAll()
            }
          
            
            let existingKeys = Set( self.StoreList.compactMap{
                $0?.storeId
                       })
            
            let newStore = result?.data?.listStoreInfos?.items?.compactMap{$0}.filter{
                !existingKeys.contains($0.storeId)
            }
            newStore?.forEach({
                print("NewStore:\($0.storeCode)")
            })
            newStore?.forEach{
                self.storeDetails.append( StoreDetails(storeCode: $0.storeCode,items: []))
            }
            print("Fetching Data")
            
            
            self.StoreList.append(contentsOf: newStore ?? [])
            print(self.StoreList.count)
            self.nextToken = result?.data?.listStoreInfos?.nextToken
            
            self.isLoadInProgress = false
            self.FetchAllStoreItems()
            self.tableView.reloadData()
            
        }
    }
}





extension StoreInfosTableViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return storeDetails[collectionView.tag].items.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? customCollectionCell else{fatalError("unable to cast ") }
        cell.ItemTag.text = storeDetails[collectionView.tag].items[indexPath.row]?.item
        let priceTag = storeDetails[collectionView.tag].items[indexPath.row]?.priceTag
        let SalesStoryTag = storeDetails[collectionView.tag].items[indexPath.row]?.salesStory
        if priceTag == "No Contents"{
            if SalesStoryTag == "No Contents"{
//                cell.PriceTag.text = 
            }else{
                cell.PriceTag.text = SalesStoryTag
            }
            
        }else{
            cell.PriceTag.text = priceTag
            if SalesStoryTag != "No Contents"{
                cell.SalesStoryTag.text = SalesStoryTag
            }
        }
//        cell.SalesStoryTag.text = storeDetails[collectionView.tag].items[indexPath.row]?.salesStory
        let pic = storeDetails[collectionView.tag].items[indexPath.row]?.imageSrc ?? nil
        
        if pic != "No Links"{
            guard let url = URL(string: pic!) else {  fatalError("url cast failed:\(pic)") }
            cell.ItemImage.load(url:url)
        }else{
            cell.ItemImage.image = UIImage(named:"NoImage.png")
        }
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height: 118*2.5)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        print(indexPath.row)
        selectedItem = storeDetails[collectionView.tag].items[indexPath.row]
//        print("item id :\(selectedItemId)")
        guard let tableIndexPath = (collectionView as? MyCustomCollectionView)?.parentTableViewIndexPath else { return }
//        selectCell = tableIndexPath
        print("cell:\(tableIndexPath)")
        
        performSegue(withIdentifier: "detailsegue", sender: tableIndexPath.row)
//        print(indexPath.section)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let id = segue.identifier else{return }
        print("prepare for segue")
        print("id")
//        print(id)
        if id == "detailsegue"{
            print("detail segue")
//            print(sender)
            let vc = segue.destination as? UINavigationController
            let nextvc = vc?.viewControllers[0] as? StoreDetailsTableViewController
//            print(vc)
//            let indexpath = sender as? NSIndexPath
//            nextvc?.test = 5253
            let row = sender as? Int
            print("\(row)")
//            tableView.visibleCells
            let cell = tableView.visibleCells[row!] as? CustomTableViewCell
            nextvc?.selectedItem = selectedItem ?? nil
            nextvc?.selectStore = cell?.StoreTag.text
//            let cell = tableView.visibleCells[row!] as?  CustomTableViewCell
//            cell.
//            nextvc?.selectStoreCode =  storeids[ cell!.row ]
        }
        if id == "viewAllSegue"{
            let vc = segue.destination as? UINavigationController
            let nextvc = vc?.viewControllers[0] as? StoreDetailsTableViewController
            let btn = sender as? UIButton
            let cell = btn?.superview?.superview as? CustomTableViewCell
           
            nextvc?.selectStore =  cell?.StoreTag.text
        }
    }
   
    
}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}



