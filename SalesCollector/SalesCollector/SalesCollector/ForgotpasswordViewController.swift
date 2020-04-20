//
//  ForgotpasswordViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/19.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
import AWSAppSync

class ForgotpasswordViewController: UIViewController,UITextFieldDelegate {
    
    var appSyncClient: AWSAppSyncClient?
    @IBOutlet weak var EmailTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient

        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }

    @IBAction func SendEmail(_ sender: UIButton) {
        if let email = EmailTxt.text,validateEmail(email){
            let listQuery = ListUsersQuery(filter: TableUsersFilterInput(emailAddress:TableStringFilterInput(eq:EmailTxt.text!)), limit: 100)
            appSyncClient?.fetch(query: listQuery, cachePolicy: .returnCacheDataAndFetch) {(result, error) in
                if error != nil {
                    print(error?.localizedDescription ?? "")
                    return
                }
                if result?.data?.listUsers?.items?.count == 0{
                    self.alert("account doesn't exist!")
                    return
                }
                // reset password by aws here to do
                self.alert("reset mail have been sent")
                
            }
        }else{
            alert("invalid email format ")
        }
    }
    func alert(_ msg:String) {
        let alert = UIAlertController(title: "hint", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert,animated: true,completion: nil)
    }
    
    func validateEmail(_ email:String) ->Bool{
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
