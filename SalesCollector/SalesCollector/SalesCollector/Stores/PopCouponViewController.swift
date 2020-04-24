//
//  PopCouponViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/22.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit

class PopCouponViewController: UIViewController {
    var details:String?
    @IBOutlet weak var Content: UILabel!
    @IBOutlet weak var popView: UIView!
    @IBOutlet weak var Disclaimer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        popView.layer.cornerRadius = 25
        popView.layer.masksToBounds = true
//        self.view.backgroundColor = UIColor.
        if details == "No Availables"{
            Content.text = "No Coupons!"
        }else{
            let detailsCoupon = details?.split(separator: "=")[1]
            let disclaimerCoupon = details?.split(separator:"=").last
            Content.text = "\((detailsCoupon!.split(separator: ",").first)!)"
            Disclaimer.text = "\((disclaimerCoupon?.split(separator: "}").first)!)"
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CloseBtn(_ sender: UIButton) {
        self.view.removeFromSuperview()
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
