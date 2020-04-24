//
//  UsersAndSettingsTableViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/16.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
import CoreData
import AWSAppSync

class UsersAndSettingsTableViewController: UITableViewController {

    
    @IBOutlet weak var WelcomeLabel: UILabel!
    var managedObjectContext: NSManagedObjectContext? = nil
    var Cacheduser:UserInfo?
    var appSyncClient: AWSAppSyncClient?
    @IBOutlet weak var Maillabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return }
        managedObjectContext = appDelegate.persistentContainer.viewContext
        guard let user = try! managedObjectContext?.fetch(UserInfo.fetchRequest()) as? [UserInfo] else{return }
        Cacheduser = user.first
        appSyncClient = appDelegate.appSyncClient
        WelcomeLabel.text! += user.first!.name!
        Maillabel.text = user.first?.emailaddress
//        CheckLoginStatus()
    }
    
   
    @IBAction func Logout(_ sender: UIButton) {
        //delete cached user data
        let fetch = NSFetchRequest<NSFetchRequestResult>(entityName: "UserInfo")
        let request = NSBatchDeleteRequest(fetchRequest: fetch)
        do{
            
            try self.managedObjectContext?.execute(request)
            try self.managedObjectContext?.save()
        }catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
        // jump to main
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "root")
        nextVC?.modalPresentationStyle = .fullScreen
        self.present(nextVC!, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {return }
        if identifier == "Email"{
            let vc = EmailEditingTableViewController()
            vc.email = Cacheduser?.emailaddress
        }
    }
    
}
