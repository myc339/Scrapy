//
//  RootViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/18.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
import AWSAppSync


class LoginViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var EmailTxt: UITextField!
    @IBOutlet weak var PasswordTxt: UITextField!
    
    var discard: Cancellable?
    
    var appSyncClient: AWSAppSyncClient?
    
    var nextToken: String?
    var fixedLimit: Int = 50 // predefined pagination size
    
    var isLoadInProgress: Bool = false
    var EmailList:[ListUsersQuery.Data.ListUser.Item?] = []
    var managedObjectContext: NSManagedObjectContext? = nil
    
    var email:String?
    var pwd:String?
    var authKey:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return }
        
        appSyncClient = appDelegate.appSyncClient
        // Do any additional setup after loading the view.
        
        managedObjectContext = appDelegate.persistentContainer.viewContext
        //check user auth cached with server one same directly login otherwise update
        print("auth\(self.authKey)")
        CheckAuth()
        
        print("auth\(self.authKey)")
        
        PasswordTxt.togglePasswordVisibility()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    @IBAction func prepareUnwind(segue:UIStoryboardSegue){
        
    }
//    override func viewDidAppear(_ animated: Bool) {
//        CheckAuth()
//    }
    
    func CheckAuth(){
        guard let user = try! managedObjectContext?.fetch(UserInfo.fetchRequest()) as? [UserInfo] else{return }
        print("load cached")
        guard let email = user.first?.emailaddress,let pwd = user.first?.password else{
            self.authKey = false
            return}
        print(email)
        let listQuery = ListUsersQuery(filter: TableUsersFilterInput(emailAddress:TableStringFilterInput(eq:email),password: TableStringFilterInput(eq:pwd)), limit: fixedLimit
        )
        appSyncClient?.fetch(query: listQuery, cachePolicy: .fetchIgnoringCacheData) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            print(result?.data?.listUsers?.items?.count)
            if result?.data?.listUsers?.items?.count == 0{
//                self.alert("account or password incorrect!")
                self.authKey = false
                return
            }else{
//                self.authKey = true
                self.performSegue(withIdentifier: "ProfileSegue", sender: self)
            }

        }

    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    @IBAction func Cancel(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func HideAndShowPassword(_ sender: UIButton) {
        PasswordTxt.togglePasswordVisibility()
        if !PasswordTxt.isSecureTextEntry{
            sender.setImage(UIImage(systemName: "eye"), for: UIControl.State.normal)
        }else{
            sender.setImage(UIImage(systemName: "eye.slash"), for: UIControl.State.normal)
        }
    }
    func validateEmail(_ email:String) ->Bool{
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
        
    }
    //    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
    //        <#code#>
    //    }
    @IBAction func auth(_ sender: CustomButton) {
        
        //        performSegue(withIdentifier: "MainSegue", sender: self)
        print("auth:\(self.authKey)")
        if let Email = EmailTxt.text,let password = PasswordTxt.text ,validateEmail(Email){
            if Email.isEmpty || password.isEmpty{
                alert("please input your account and password,or sign up")
                return
            }
            print("mail:\(Email),password:\(password)")
            let listQuery = ListUsersQuery(filter: TableUsersFilterInput(emailAddress:TableStringFilterInput(eq:Email),password: TableStringFilterInput(eq:password)), limit: fixedLimit
            )
            appSyncClient?.fetch(query: listQuery, cachePolicy: .fetchIgnoringCacheData) {(result, error) in
                if error != nil {
                    print(error?.localizedDescription ?? "")
                    return
                }
                
                print(result?.data?.listUsers?.items?.first??.emailAddress)
                if result?.data?.listUsers?.items?.count == 0{
                    self.authKey = false
                    self.alert("email Address or password not correct!")
                    return
                }else{
                    
                    //delete former cached data
                    print("save cached11")
                    let fetch = NSFetchRequest<NSFetchRequestResult>(entityName: "UserInfo")
                    let request = NSBatchDeleteRequest(fetchRequest: fetch)
                    do{
                        
                        try self.managedObjectContext?.execute(request)
                        try self.managedObjectContext?.save()
                    }catch {
                        let nserror = error as NSError
                        fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
                    }
                    self.managedObjectContext?.refreshAllObjects()
                    //save user info into core data
                    guard let user = result?.data?.listUsers?.items?.first else{
                        return
                    }
//                    print(user?.address)
                    let cachedUser = UserInfo(context: self.managedObjectContext!)
                    cachedUser.address = user?.address
                    cachedUser.emailaddress = user?.emailAddress
                    cachedUser.password = user?.password
                    cachedUser.id = user?.userId

                    
                    do {
                        try self.managedObjectContext?.save()
                         print("save cached")
                    }catch{
                        let nserror = error as NSError
                        fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
                    }
                    
                    
                    
                    self.authKey = true
                    
                    
                    // segue perform
//                    return true
                    self.performSegue(withIdentifier: "ProfileSegue", sender: self)
                    
                }
                
            }
            
        }else{
            self.authKey = false
            alert("Invalid Email Addrress")
            return
        }
        
    }
    
    func alert(_ msg:String) {
        let alert = UIAlertController(title: "hint", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert,animated: true,completion: nil)
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "ProfileSegue"{
            return self.authKey
        }
        if identifier == "forgotSegue"{
            return true
        }
        if identifier == "RegisterSegue"{
            return true
        }
//        if identifier == "SkipSegue"{
//            return true
//        }
        return false
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         guard let id = segue.identifier else {return }
//        if id == "SkipSegue"{
//            if let vc = segue.destination as? StoreInfosTableViewController{
//                vc.auth = self.authKey
//            }
//        }
//        if id == "MainSegue"{
//            if let vc = segue.destination as? StoreInfosTableViewController{
//                vc.auth = self.authKey
//            }
//        }
    }
    
    
    
//    func subscribe(){
//        do {
//        discard = try self.appSyncClient?.subscribe(subscription: OnUpdateUsersSubscription(), resultHandler: { (result, transaction, error) in
//            if let result = result {
//                if let email = result.data?.onUpdateUsers?.emailAddress,
//                    let pwd = result.data?.onUpdateUsers?.password{
//                    self.email = email
//                    self.pwd = pwd
//                }
//
//
//            }
//            })
//            print("Subscribed to CreateTodo Mutations.")
//        } catch {
//            print("Error starting subscription.")
//        }
//    }
    
    
    
}

extension UITextField {
    func togglePasswordVisibility() {
        isSecureTextEntry = !isSecureTextEntry
        
        if let existingText = text, isSecureTextEntry {
            /* When toggling to secure text, all text will be purged if the user
             continues typing unless we intervene. This is prevented by first
             deleting the existing text and then recovering the original text. */
            deleteBackward()
            
            if let textRange = textRange(from: beginningOfDocument, to: endOfDocument) {
                replace(textRange, withText: existingText)
            }
        }
        
        /* Reset the selected text range since the cursor can end up in the wrong
         position after a toggle because the text might vary in width */
        if let existingSelectedTextRange = selectedTextRange {
            selectedTextRange = nil
            selectedTextRange = existingSelectedTextRange
        }
    }
    
}

