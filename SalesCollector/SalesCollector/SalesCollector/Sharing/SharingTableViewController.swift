//
//  SharingTableViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/23.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
import AWSAppSync
class SharingTableViewController: UITableViewController {
    var appSyncClient: AWSAppSyncClient?
    
    @IBOutlet weak var searchBar: CustomSearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        searchBar.clearButtonColor      = .purple
        searchBar.cancelButtonColor     = .magenta
        searchBar.searchIconColor       = .red
        searchBar.placeholderColor      = .green
        searchBar.textColor             = .orange
        searchBar.capabilityButtonColor = .green
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    

}
