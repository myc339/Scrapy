//
//  MarkTableViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/23.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
import AWSAppSync
class MarkItemCell:UITableViewCell{
    
    @IBOutlet weak var ItemImage: UIImageView!
    @IBOutlet weak var ItemName: UILabel!
    @IBOutlet weak var Price: UILabel!
    @IBOutlet weak var Quantity: UILabel!
  
    @IBOutlet weak var TotalAndSave: UILabel!
    @IBOutlet weak var link: UITextView!
    @IBOutlet weak var validity: UILabel!
}

class MarkTableViewController: UITableViewController {
    
    @IBOutlet weak var searchBar: CustomSearchBar!
    var markList:Usermark?
    var addressList:[String] = []
    var managedObjectContext: NSManagedObjectContext? = nil
    var appSyncClient:AWSAppSyncClient?
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        managedObjectContext = appDelegate.persistentContainer.viewContext
        
//        searchBar.showsCancelButton = false
        searchBar.clearButtonColor      = .purple
        searchBar.cancelButtonColor     = .magenta
        searchBar.searchIconColor       = .red
        searchBar.placeholderColor      = .green
        searchBar.textColor             = .orange
        searchBar.capabilityButtonColor = .green
        fetchAllMarkItem()
        let popCouponvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popLoading")as! LoadingProgressViewController
        //        popCouponvc.details  = item.first??.coupon
        self.addChild(popCouponvc)
        //        print(tableView.contentOffset.y)
        popCouponvc.view.frame =  CGRect(x: 0, y:   300, width:self.view.frame.width, height: self.view.frame.height*0.4)
        self.view.addSubview(popCouponvc.view)
        popCouponvc.didMove(toParent: self)
        let seconds = 2.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            popCouponvc.view.removeFromSuperview()        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        fetchAllMarkItem()
        let popCouponvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popLoading")as! LoadingProgressViewController
        //        popCouponvc.details  = item.first??.coupon
        self.addChild(popCouponvc)
        //        print(tableView.contentOffset.y)
        popCouponvc.view.frame =  CGRect(x: 0, y:   300, width:self.view.frame.width, height: self.view.frame.height*0.4)
        self.view.addSubview(popCouponvc.view)
        popCouponvc.didMove(toParent: self)
        let seconds = 2.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            popCouponvc.view.removeFromSuperview()
            
            
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.addressList.removeAll()
        self.markList =  nil
        self.tableView.isEditing = false
    }
    func fetchAllMarkItem(){
        guard let user = try! managedObjectContext?.fetch(UserInfo.fetchRequest()) as? [UserInfo] else{return  }
        
        guard let id = user.first?.id else {return }
        let query = ListUserMarksQuery(filter: TableUserMarkFilterInput(userId:TableStringFilterInput(
            eq:user.first?.id)), limit: 100)
        appSyncClient?.fetch(query: query,cachePolicy: .fetchIgnoringCacheData){(result,error) in
            
            if let error = error{
                print("Error fetching data: \(error)")
                return
            }
            self.markList = Usermark(id: id, items:  [], shareid: [])
            
            var exsitingStore = Set(self.addressList.compactMap{$0})
            
            
            var newStore = result?.data?.listUserMarks?.items?.compactMap{$0}.filter{
                !exsitingStore.contains($0.store)
            }
            
            var Stores = Set((newStore?.compactMap{$0.store})!)
            
//            print("newStores:\(Stores)")
            self.addressList.append(contentsOf: Stores ?? [])
            
//            self.addressList.append(contentsOf:  Set((result?.data?.listUserMarks?.items?.compactMap{
//                $0?.store
//                })!))
           
            
            
//            print(self.addressList)
            result?.data?.listUserMarks?.items?.forEach{
                guard let id = $0?.itemId,let shareid = $0?.sharingId,let address = $0?.store,let markid = $0?.markid else{return }
                if id != "Nil"{
                    self.markList?.items.append(item(link:"",markid:markid,name: "", itemid: id, itemImage: "", itemPrice: "", itemSalesStory: "", validity: "",store: address))
                }
                if shareid != "Nil"{
                    self.markList?.shareid.append(shareid)
                }
                
            }
            
            self.searchBar.scopeButtonTitles = ["item(\((self.markList?.items.count)!))","share(\((self.markList?.shareid.count)!))"]
//            self.
            self.markList?.items.forEach({
                self.fetchItemDetails($0, $0.itemid)
            })
            self.tableView.reloadData()
        }
    }
    func fetchItemDetails(_ item:item,_ id:String) {
        let query = ListStopshopsQuery(filter: TableStopshopFilterInput(itemId:TableStringFilterInput(eq:id)), limit: 500)
        appSyncClient?.fetch(query: query,cachePolicy: .fetchIgnoringCacheData){(result,error) in
            if let error = error{
                print("Error fetching data:\(error)")
                return
            }
            guard let detail = result?.data?.listStopshops?.items?.first! else{return }
            
            item.itemImage =  detail.imageSrc
            item.itemSalesStory = detail.salesStory
            item.name = detail.item
            item.itemPrice = detail.priceTag
            item.validity = detail.validity
            item.link = detail.link
//            item.store = detail.s
//            print("src:\(item.itemImage)")
           
            self.tableView.reloadData()
        }
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    // MARK: - Table view data source

    @IBAction func EditBtn(_ sender: UIBarButtonItem) {
        self.tableView.isEditing = !self.tableView.isEditing
        print(sender.title)
        sender.title = (self.tableView.isEditing) ? "Done":"Edit"
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
//        print("Address:\(addressList)")
//        guard let address = addressList else
        return addressList.count
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
//            print("start delete")
            let address = addressList[indexPath.section]
            var SortByStore = markList?.items.filter{
                       $0.store == address
                   }
            let cell = SortByStore![indexPath.row]
            SortByStore?.remove(at: indexPath.row)
            self.markList?.items = (markList?.items.filter{
                $0.markid != cell.markid
                })!
            markList?.items.forEach{
                print("item be marked:\($0.name)")
            }
            
            if SortByStore?.count == 0{
                addressList.remove(at: indexPath.section)
                self.tableView.deleteSections(IndexSet(arrayLiteral: indexPath.section), with: .automatic)
            }else{
                self.tableView.deleteRows(at: [indexPath], with: .automatic)

            }
//            print(markList?.items)
            let deletemutation = DeleteUserMarkInput(markid:cell.markid , userId: markList!.userid)
            appSyncClient?.perform(mutation: DeleteUserMarkMutation(input: deletemutation)){(result,error) in
                if let error = error {
                    print("error\(error)")
                }
//               print("Indexpath:\(indexPath))")
            }
//            self.tableView.reloadData()
            self.searchBar.scopeButtonTitles = ["item(\((self.markList?.items.count)!))","share(\((self.markList?.shareid.count)!))"]
            
        }
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return addressList[section]
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if addressList.count == 0{
            return 0
        }
        let address = addressList[section]
        
        guard let items = markList?.items else{return 0}
        var SortByStore = items.filter{
            $0.store == address
        }
        return SortByStore.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MarkCell", for: indexPath) as? MarkItemCell else{
        fatalError("cast failed")}
        let address = addressList[indexPath.section]
        var SortByStore = markList?.items.filter{
            $0.store == address
        }
//        SortByStore
        let item = SortByStore![indexPath.row]
        cell.ItemName.text = item.name
        let pic = item.itemImage ?? nil
//        print("pic:\(pic)")
        // Configure the cell...
        if pic != "No Links" && !pic!.isEmpty{
            guard let url = URL(string: pic!) else {  fatalError("url cast failed:\(pic)") }
            cell.ItemImage!.load(url:url)
        }else{
            cell.ItemImage!.image = UIImage(named:"NoImage.png")
        }
        cell.validity.text = item.validity
        let price = item.itemPrice == "No Contents" ? "":item.itemPrice
        let salesStory = item.itemSalesStory == "No Contents" ? "":item.itemSalesStory
        cell.Price.text = price + salesStory
        let attributedString = NSMutableAttributedString(string: "want to know more detail? visit official website!")
        attributedString.addAttribute(.link, value: item.link
            , range: NSRange(location: 25, length: 24))
        cell.link.attributedText =  attributedString
        
        return cell
    }
    
    @IBAction func PlusItemQuantity(_ sender: UIButton) {
        guard let cell = sender.superview?.superview?.superview?.superview as? MarkItemCell else {return }
        guard let value = Int(cell.Quantity.text as! String) else {
            fatalError("Something went horribly wrong")
        }
        cell.Quantity.text = String(value + 1)
    }
    
    @IBAction func MinusItemQuantity(_ sender: UIButton) {
        guard let cell = sender.superview?.superview?.superview?.superview as? MarkItemCell else {return }
        guard let value = Int(cell.Quantity.text as! String) else {
            fatalError("Something went horribly wrong")
        }
        cell.Quantity.text = String(value - 1)
        
    }
    
}

extension MarkTableViewController:UISearchBarDelegate{
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        searchDetails.removeAll()
//
//        if searchText.isEmpty {
//            print("empty")
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//                self.searching = false
//                self.tableView.reloadData()
//            }
//        }else{
////        print("searching!!")
//        searchList = StoreItems.filter({String($0!.item).lowercased().contains(searchText.lowercased()) })
//            let categorylist = Set(searchList.compactMap{
//                $0?.category
//            })
//            let category = categorylist.sorted { (s1, s2) -> Bool in
//                s1 < s2
//            }
//
//            category.forEach({
//                self.searchDetails.append(ItemDetails($0, item: []))
//            })
//
//            self.searchList.forEach{
//                self.checkExstingOneOfSearch(category: $0!.category)?.items.append($0)
//            }
//        print(searchList)
//        searching = true
//             tableView.reloadData()
//        }
//
//    }
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        print("clicked cancel")
//        searching = false
//        searchBar.text = ""
//
//        searchBar.resignFirstResponder()
////        tableView.tableHeaderView = nil
////        searchBar.isHidden = true
//        tableView.reloadData()
//    }
//    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
//        searchDetails.removeAll()
//        switch selectedScope {
//        case 0:
//            searching = false
//
//        case 1:
//            searching = true
//            searchList = StoreItems.filter{
//                $0?.category == "Produce"
//            }
////            tableView.reloadData()
//        case 2:
//            searching = true
//            searchList = StoreItems.filter{
//                $0?.category == "Meat"
//            }
////            tableView.reloadData()
//        case 3:
//            searchList = StoreItems.filter{
//                $0?.category == "Dairy"
//            }
//            searching = true
//        case 4:
//            searching = true
//            searchList = StoreItems.filter{
//                $0?.category == "Beverages"
//            }
//        default: break
//        }
////        searchList = StoreItems.filter({String($0!.item).lowercased().contains(searchText.lowercased()) })
//            let categorylist = Set(searchList.compactMap{
//                $0?.category
//            })
//
//            let category = categorylist.sorted { (s1, s2) -> Bool in
//                s1 < s2
//            }
//
//            category.forEach({
//                self.searchDetails.append(ItemDetails($0, item: []))
//            })
//        print(searchDetails.count)
//
//            self.searchList.forEach{
//                self.checkExstingOneOfSearch(category: $0!.category)?.items.append($0)
//            }
//        print(searchList)
////        print(searchList)
//        tableView.reloadData()
//    }
}

