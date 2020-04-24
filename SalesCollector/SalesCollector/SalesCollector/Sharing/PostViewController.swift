//
//  PostViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/23.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {

    @IBOutlet weak var TextBotConstraint: NSLayoutConstraint!
    @IBOutlet weak var TextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        TextView.becomeFirstResponder()
       NotificationCenter.default.addObserver(self, selector: #selector(_KeyboardHeightChanged(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)


        // Do any additional setup after loading the view.
    }
    @IBAction func Close(_ sender: UIBarButtonItem) {
         self.dismiss(animated: true, completion: nil)
    }
    @objc private func _KeyboardHeightChanged(_ notification: Notification){
        if let frame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue{
            UIView.animate(withDuration: 0.5, animations: {
                self.TextBotConstraint.constant == 0 ? (self.TextBotConstraint.constant = frame.cgRectValue.height) : (self.TextBotConstraint.constant = 0)
            })

        }
    }
    
    
    }
    
    
    


