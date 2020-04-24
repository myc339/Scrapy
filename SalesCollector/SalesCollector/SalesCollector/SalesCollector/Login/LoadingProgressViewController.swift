//
//  LoadingProgressViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/23.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit

class LoadingProgressViewController: UIViewController {

    @IBOutlet weak var Progress: UIActivityIndicatorView!
    @IBOutlet weak var popView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        popView.layer.cornerRadius = 15
        popView.layer.masksToBounds = true
        popView.layer.borderWidth = 1
        popView.layer.borderColor = UIColor.systemBlue.cgColor
        Progress.startAnimating()
        // Do any additional setup after loading the view.
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
