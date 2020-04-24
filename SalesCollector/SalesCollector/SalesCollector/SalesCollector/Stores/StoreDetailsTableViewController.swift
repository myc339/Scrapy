//
//  StoreDetailsTableViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/21.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
import AWSAppSync

class StoreDetailsTableViewController: UITableViewController,UITextViewDelegate {
    
    var selectStore :String?
    var selectedItem:ListStopshopsQuery.Data.ListStopshop.Item?
    var StoreItems:[ListStopshopsQuery.Data.ListStopshop.Item?] = []
    var appSyncClient: AWSAppSyncClient?
    var isLoadInProgress: Bool = false
    var StoreCode:String?
    var nextToken:String?
    var searching = false
    var itemDetails:[ItemDetails] = []
    var searchDetails:[ItemDetails] = []
    var searchList: [ListStopshopsQuery.Data.ListStopshop.Item?] = []
    @IBOutlet weak var searchBar: CustomSearchBar!
    
    var managedObjectContext: NSManagedObjectContext? = nil

    
    //    var test = 0
    
    @IBAction func SearchBar(_ sender: UIBarButtonItem) {
//        print("print category ")
//        print(itemDetails)
//        itemDetails.forEach({
//            print("\($0.category),\($0.items.count)")
//        })
////        searchBar.isHidden = false
////        searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 44.0)) as! CustomSearchBar
////        tableView.tableHeaderView = searchBar
////        searchBar.isHidden = true

    }
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
        FetchALlStoreItems(.fetchIgnoringCacheData)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        self.navigationItem.title = selectStore
        managedObjectContext = appDelegate.persistentContainer.viewContext
        
        StoreCode = String(selectStore!.split(separator: ",").last!.prefix(4))
        FetchALlStoreItems(.fetchIgnoringCacheData)
//        searchBar.showsScopeBar = true
//        tableView.tableHeaderView = nil
//        searchBar.isHidden = true
//        searchBar.showsCancelButton = false
        searchBar.clearButtonColor      = .purple
        searchBar.cancelButtonColor     = .magenta
        searchBar.searchIconColor       = .red
        searchBar.placeholderColor      = .green
        searchBar.textColor             = .orange
        searchBar.capabilityButtonColor = .green

    }
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
            UIApplication.shared.open(URL)
            return false
        }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    

    @IBAction func CouponDetailBtn(_ sender: UIButton) {
        
//        sender.superview
        let cell = sender.superview?.superview as? ItemTableViewCell
        let item =  StoreItems.filter({
            $0?.item == cell?.ItemTag.text
        })
        let popCouponvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popCoupon")as! PopCouponViewController
        popCouponvc.details  = item.first??.coupon
        self.addChild(popCouponvc)
        print(tableView.contentOffset.y)
        popCouponvc.view.frame =  CGRect(x: 0, y: tableView.contentOffset.y + 200, width: tableView.frame.width, height: tableView.frame.height/2)
        self.view.addSubview(popCouponvc.view)
        popCouponvc.didMove(toParent: self)
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        if !searching{
            return itemDetails.count
        }else{
            return searchDetails.count
        }
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if !searching{
            return "\((itemDetails[section].category))(\((itemDetails[section].items.count)))"
        }else{
            return "\((searchDetails[section].category))(\((searchDetails[section].items.count)))"
        }
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if !searching{
            return itemDetails[section].items.count
            
        }else{
            return searchDetails[section].items.count
        }
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  350
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as? ItemTableViewCell else{ fatalError("cast failed") }
        var  item:ListStopshopsQuery.Data.ListStopshop.Item?
//        print("Searching Tag:\(searching)")
        if !searching {
            item = itemDetails[indexPath.section].items[indexPath.row]
        }else{
            item = searchDetails[indexPath.section].items[indexPath.row]
        }
//        let item = StoreItems[indexPath.row]
        let pic = item?.imageSrc ?? nil
        
        if pic != "No Links"{
            guard let url = URL(string: pic!) else {  fatalError("url cast failed:\(pic)") }
            cell.ItemImage!.load(url:url)
        }else{
            cell.ItemImage!.image = UIImage(named:"NoImage.png")
        }
        cell.ItemTag.text = item?.item
        cell.PriceTag.text = item?.priceTag == "No Contens" ? "":item?.priceTag
        cell.SalesStoryTag.text = item?.salesStory == "No Contents" ? "":item?.salesStory
        cell.ValidityTag.text = item?.validity == "No Contens" ? "":item?.validity
        cell.DescriptionTag.text = item?.itemDescription == "No Contents" ? "":item?.itemDescription
        cell.DisclaimerTag.text = item?.itemDisclaimerText == "No Contents" ? "":item?.itemDisclaimerText
        cell.Coupon.text = "Coupon:\((item?.coupon == "No Availables" ? "No Available coupons":item?.coupon.split(separator: "=")[1].split(separator: ",").first!)!)"
        let attributedString = NSMutableAttributedString(string: "want to know more detail? visit official website!")
        attributedString.addAttribute(.link, value: item?.link
            , range: NSRange(location: 25, length: 24))
//        if item?.coupon == "No Availables"{
//            cell.CouponDetailBtn.isHidden = true
//        }
        cell.textview.attributedText = attributedString
        
//        cell.Linktag.text = item?.link
//        cell.imageView?.image.load
        // Configure the cell...

        return cell
    }
    

    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if !isLoadInProgress,
            indexPath.row > StoreItems.count - 2 ,
            nextToken?.count ?? 0 > 0 {
            FetchALlStoreItems(.fetchIgnoringCacheData)
        }
    }

    func FetchALlStoreItems(_ cachePolicy: CachePolicy){
          if isLoadInProgress{
              return
          }
          isLoadInProgress = true
       
//        let storecode = String(StoreCode
        let listQuery = ListStopshopsQuery( filter:TableStopshopFilterInput(storeCode:TableStringFilterInput(eq:StoreCode)) ,limit: 500,nextToken: self.nextToken)
          appSyncClient?.fetch(query: listQuery,cachePolicy: .fetchIgnoringCacheData){ result,error in
              
              if let error = error{
                  print("Error fetching data: \(error)")
                  return
              }
              
              // Remove existing records if we're either loading from cache, or loading fresh (e.g., from a refresh)
              if self.nextToken == nil, cachePolicy == .returnCacheDataAndFetch {
                  self.StoreItems.removeAll()
              }
            
              
              let existingKeys = Set( self.StoreItems.compactMap{
                $0?.itemId
                         })
              
              let newItem = result?.data?.listStopshops?.items?.compactMap{$0}.filter{
                !existingKeys.contains($0.itemId)
              }
            print("newItme:\(newItem?.count)")
             
            
              print("Fetching Data")
              
              
              self.StoreItems.append(contentsOf: newItem ?? [])
            
            let categoryList = Set(self.StoreItems.compactMap{
                $0?.category
                })
            
            var category = categoryList.sorted { (s1, s2) -> Bool in
                s1 < s2
            }
            print(category)
            if self.selectedItem != nil {
                self.itemDetails.append(ItemDetails(self.selectedItem!.category,item: []))
                category = category.filter{
                    $0 != self.selectedItem?.category
                }
            }
            category.forEach({
                self.itemDetails.append(ItemDetails($0, item: []))
            })
            
//            print("fetch store items")
//            print("categoryList:\(categoryList)")
            if self.selectedItem != nil {
                self.checkExistingOne(category: self.selectedItem!.category)?.items.append(self.selectedItem)
                self.StoreItems = self.StoreItems.filter{
                    $0?.itemId != self.selectedItem?.itemId
                }
            }
            self.StoreItems.forEach{
                self.checkExistingOne(category: $0!.category)?.items.append($0)
            }
//              print(self.StoreList.count)
              self.nextToken = result?.data?.listStopshops?.nextToken
              
              self.isLoadInProgress = false
            self.searchBar.scopeButtonTitles = ["All(\(self.StoreItems.count))","VEG(\(self.Countcategrory("Produce")))","Meat(\(self.Countcategrory("Meat")))","Dairy(\(self.Countcategrory("Dairy")))","BEV(\(self.Countcategrory("Beverages")))"]

              self.tableView.reloadData()
              
          }
      }
    
    @IBAction func MarkItem(_ sender: UIButton) {
        let alert = UIAlertController(title: "title", message: "marked\(StoreItems.count)", preferredStyle: .alert)
        
        
        guard let user = try! managedObjectContext?.fetch(UserInfo.fetchRequest()) as? [UserInfo] else{return  }
        let cell = sender.superview?.superview as! ItemTableViewCell
        guard let item = StoreItems.filter({
            $0?.item == cell.ItemTag.text
        }).first else{return }
        let query = ListUserMarksQuery(filter: TableUserMarkFilterInput(userId:TableStringFilterInput(eq:user.first?.id)), limit: 100)
        appSyncClient?.fetch(query: query, cachePolicy: .fetchIgnoringCacheData){ (result,error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
            let exsitingCheck = result?.data?.listUserMarks?.items?.filter{
                $0?.itemId == item?.itemId
            }
            print("store:\(self.selectStore)")
            if exsitingCheck?.count == 0{
                let  Markmutation = CreateUserMarkMutation(input: CreateUserMarkInput(markid:  UUID().uuidString, userId: (user.first?.id)!, itemId: (item?.itemId)!, sharingId: "Nil",store: self.selectStore!))
                self.appSyncClient?.perform(mutation: Markmutation){ (result, error) in
                            if let error = error as? AWSAppSyncClientError {
                                print("Error occurred: \(error.localizedDescription )")
                            }
                            if let resultError = result?.errors {
                                print("Error saving the item on server: \(resultError)")
                                return
                            }
                            print("Mutation complete.")
                    
                            alert.addAction(UIAlertAction(title: "OK,Save Success", style: .default, handler: nil))
                        }

                        
            }else{
                 alert.addAction(UIAlertAction(title: "You have marked it!", style: .default, handler: nil))
            }
        }
       
        self.present(alert, animated: true, completion: nil)
    }
    
    func checkExistingOne(category:String)->ItemDetails?{
        let item = self.itemDetails.filter{
            $0.category == category
        }
        return item.first
    }
    func Countcategrory(_ catergory:String) ->Int{
        let items = self.itemDetails.filter{
            $0.category == catergory
        }
        return (items.first?.items.count)!
    }
    func checkExstingOneOfSearch(category:String) ->ItemDetails?{
        let item = self.searchDetails.filter{
            $0.category == category
        }
        return item.first
    }
}

extension StoreDetailsTableViewController:UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchDetails.removeAll()

        if searchText.isEmpty {
            print("empty")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.searching = false
                self.tableView.reloadData()
            }
        }else{
//        print("searching!!")
        searchList = StoreItems.filter({String($0!.item).lowercased().contains(searchText.lowercased()) })
            let categorylist = Set(searchList.compactMap{
                $0?.category
            })
            let category = categorylist.sorted { (s1, s2) -> Bool in
                s1 < s2
            }
            
            category.forEach({
                self.searchDetails.append(ItemDetails($0, item: []))
            })
            
            self.searchList.forEach{
                self.checkExstingOneOfSearch(category: $0!.category)?.items.append($0)
            }
        print(searchList)
        searching = true
             tableView.reloadData()
        }
       
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("clicked cancel")
        searching = false
        searchBar.text = ""
        
        searchBar.resignFirstResponder()
//        tableView.tableHeaderView = nil
//        searchBar.isHidden = true
        tableView.reloadData()
    }
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        searchDetails.removeAll()
        switch selectedScope {
        case 0:
            searching = false
            
        case 1:
            searching = true
            searchList = StoreItems.filter{
                $0?.category == "Produce"
            }
//            tableView.reloadData()
        case 2:
            searching = true
            searchList = StoreItems.filter{
                $0?.category == "Meat"
            }
//            tableView.reloadData()
        case 3:
            searchList = StoreItems.filter{
                $0?.category == "Dairy"
            }
            searching = true
        case 4:
            searching = true
            searchList = StoreItems.filter{
                $0?.category == "Beverages"
            }
        default: break
        }
//        searchList = StoreItems.filter({String($0!.item).lowercased().contains(searchText.lowercased()) })
            let categorylist = Set(searchList.compactMap{
                $0?.category
            })
        
            let category = categorylist.sorted { (s1, s2) -> Bool in
                s1 < s2
            }
            
            category.forEach({
                self.searchDetails.append(ItemDetails($0, item: []))
            })
        print(searchDetails.count)
            
            self.searchList.forEach{
                self.checkExstingOneOfSearch(category: $0!.category)?.items.append($0)
            }
        print(searchList)
//        print(searchList)
        tableView.reloadData()
    }
}

