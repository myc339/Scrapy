//
//  ItemTableViewCell.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/22.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var ItemImage: UIImageView!
    @IBOutlet weak var MarkBtn: UIButton!
    @IBOutlet weak var ItemTag: UILabel!
    @IBOutlet weak var PriceTag: UILabel!
    @IBOutlet weak var SalesStoryTag: UILabel!
    @IBOutlet weak var ValidityTag: UILabel!
    @IBOutlet weak var DescriptionTag: UILabel!
    @IBOutlet weak var DisclaimerTag: UILabel!
    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var Coupon: UILabel!
    @IBOutlet weak var CouponDetailBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
//        print("load cell")
        MarkBtn.layer.cornerRadius = MarkBtn.frame.size.width/2
        MarkBtn.layer.borderWidth = 3
        MarkBtn.layer.borderColor = UIColor.systemPink.cgColor
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func MarkItem(_ sender: UIButton) {
       
        
    }
    
}
