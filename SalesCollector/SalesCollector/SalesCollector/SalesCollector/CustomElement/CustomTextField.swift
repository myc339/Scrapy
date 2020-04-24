//
//  CustomTextField.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/23.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
  @IBDesignable
class CustomLabel: UILabel {

    
    
    
    
    
    @IBInspectable var ButtonWidth:CGFloat = 0.0{
        didSet{
            self.layer.borderWidth = ButtonWidth
        }
    }
    @IBInspectable var borderColor:UIColor = UIColor.black {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    @IBInspectable var borderCorner:CGFloat = 0.0{
        didSet{
            self.layer.cornerRadius = borderCorner
        }
    }
    
    
    
        
        
    

}
