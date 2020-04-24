//
//  SharingTableViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/23.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
import AWSAppSync
class shareCell:UITableViewCell{
    
    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var Imageview: UIImageView!
    @IBOutlet weak var Content: UITextView!
    @IBOutlet weak var AddressTag: UILabel!
    @IBOutlet weak var MarkBtn: UIButton!
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        //        print("load cell")
//        MarkBtn.layer.cornerRadius = MarkBtn.frame.size.width/2
//        MarkBtn.layer.borderWidth = 3
//        MarkBtn.layer.borderColor = UIColor.systemPink.cgColor
//        
//        
//        // Initialization code
//    }
}
class SharingTableViewController: UITableViewController {
    var appSyncClient: AWSAppSyncClient?
//    var userName:String?
    var managedObjectContext: NSManagedObjectContext? = nil
    var shares:[ListUserSharingsQuery.Data.ListUserSharing.Item?] = []
    @IBOutlet weak var searchBar: CustomSearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        managedObjectContext = appDelegate.persistentContainer.viewContext
        searchBar.clearButtonColor      = .purple
        searchBar.cancelButtonColor     = .magenta
        searchBar.searchIconColor       = .red
        searchBar.placeholderColor      = .green
        searchBar.textColor             = .orange
        searchBar.capabilityButtonColor = .green
        fetchUserSharing()
//        guard let user = try! managedObjectContext?.fetch(UserInfo.fetchRequest()) as? [UserInfo] else{return  }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return shares.count
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SharingCell", for: indexPath) as? shareCell else{
            fatalError("cast failed")
        }
        guard let share = shares[indexPath.row] else{
            return cell
        }
        var contentArr = share.content.split(separator: ":")
        let address = String(contentArr.last!)
        cell.UserName.text = share.userId
        print(share.imgSrc)
        
        if share.imgSrc != "No Image"{
            guard let url = URL(string: share.imgSrc) else {  fatalError("url cast failed:") }
            cell.Imageview!.load(url:url)
        }else{
            cell.Imageview!.image = UIImage(named:"NoImage.png")
        }
        cell.AddressTag.text = address
        cell.Content.text  = String(contentArr.first!.dropLast(7))
        return cell
    }

    
    func fetchUserSharing(){
        let query = ListUserSharingsQuery(limit:100)
        appSyncClient?.fetch(query: query,cachePolicy: .fetchIgnoringCacheData){(result,error) in
            if let error = error{
                fatalError("error\(error)")
            }
            self.shares.append(contentsOf: result?.data?.listUserSharings?.items ?? [])
            self.tableView.reloadData()
            print("fetch complete")
        }
    }
}
