//
//  RegisterViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/19.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
import AWSAppSync

class RegisterViewController: UIViewController,UITextFieldDelegate {
    
    var appSyncClient: AWSAppSyncClient?
    @IBOutlet weak var NameTxt: UITextField!
    @IBOutlet weak var EmailTxt: UITextField!
    @IBOutlet weak var PhoneTxt: UITextField!
    @IBOutlet weak var PassTxt: UITextField!
    @IBOutlet weak var ConfirmPassTxt: UITextField!
    
    var nextToken: String?
    var fixedLimit: Int = 100 // predefined pagination size
    
    var isLoadInProgress: Bool = false
    var EmailList:[ListUsersQuery.Data.ListUser.Item?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        PassTxt.togglePasswordVisibility()
        //        self.textField.delegate = self
        ConfirmPassTxt.togglePasswordVisibility()
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textFiled:UITextField) ->Bool{
        //        self.view.endEditing(true)
        textFiled.resignFirstResponder()
        return true
    }
    // validte register information format
    func validateInfos() ->Bool{
        guard let Name = NameTxt.text,let Email = EmailTxt.text,
            let Phone = PhoneTxt.text,let Password = PassTxt.text,
            let confirmPwd = ConfirmPassTxt.text
            else{
                return false
        }
        if Name.isEmpty || Email.isEmpty || Phone.isEmpty || Password.isEmpty || confirmPwd.isEmpty{
            alert("All Fields is required,please check your infos")
            return false
        }
        // check email
        if !validateEmail(Email){
            alert("invalid email address format")
            return false
        }
        //check phone
        if !validatePhonenumber(Phone){
            alert("invalid Phone number")
            return false
        }
        
        //check password
        if !validatePasswordStrength(Password){
            alert("password must contain 1 uppercase letters,1 special case letter,1 lowercase letter and digits,minum length is 8")
            return false
        }
        //check confirm password
        if !validatePasswordStrength(confirmPwd){
            alert("password must contain 1 uppercase letters,1 special case letter,1 lowercase letter and digits,minum length is 8")
            return false
        }else{
            if Password != confirmPwd{
                alert("confirm password is not correct!")
                return false
            }
        }
        
        //return true
        
        
        return true
    }
    func validatePasswordStrength(_ pwd:String) ->Bool{
        // 1 upper case ,1 special case,1 digits,1 lower case
        let pwd_REGEX = "^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z]).{8}$"
        let test = NSPredicate(format: "SELF MATCHES %@", pwd_REGEX)
        let result = test.evaluate(with: pwd)
        return result
        
    }
    func validatePhonenumber(_ phoneNumber: String) -> Bool {
        let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result = phoneTest.evaluate(with: phoneNumber)
        return result
    }
    
    func validateEmail(_ email:String) ->Bool{
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
        
    }
    
    
    func alert(_ msg:String) {
        let alert = UIAlertController(title: "hint", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert,animated: true,completion: nil)
    }
    
    @IBAction func Register(_ sender: CustomButton) {
        
        
        if validateInfos(){
            
            let listQuery = ListUsersQuery(filter: TableUsersFilterInput(emailAddress:TableStringFilterInput(eq:EmailTxt.text!)), limit: fixedLimit, nextToken: self.nextToken
            )
            appSyncClient?.fetch(query: listQuery, cachePolicy: .returnCacheDataAndFetch) {(result, error) in
                if error != nil {
                    print(error?.localizedDescription ?? "")
                    return
                }
                if result?.data?.listUsers?.items?.count != 0{
                    self.alert("account exist!")
                    return
                }
                
                self.Registermutation()
            }
            
            
            
            
            
        }
        
    }
        
        
        
        func Registermutation(){
            
            // register if not exist
            let mutationInput =  CreateUsersInput(userId: UUID().uuidString, emailAddress: EmailTxt.text!, phone: PhoneTxt.text!, address: "Default", city: "Default", language: "English", name: NameTxt.text!, password: PassTxt.text!)
            
            appSyncClient?.perform(mutation: CreateUsersMutation(input: mutationInput)){ (result, error) in
                if let error = error as? AWSAppSyncClientError {
                    print("Error occurred: \(error.localizedDescription )")
                }
                if let resultError = result?.errors {
                    print("Error saving the item on server: \(resultError)")
                    return
                }
                print("Mutation complete.")
                
                self.alert("register complete! Enjoy your journey!")
                //                self.dismiss(animated: true, completion: nil)
            }
        }
        
}


