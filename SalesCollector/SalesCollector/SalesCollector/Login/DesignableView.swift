//
//  DesignableView.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/18.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
@IBDesignable
class DesignableView : UIView{
    @IBInspectable var shadowColor: UIColor = UIColor.clear{
        didSet{
            layer.shadowColor = shadowColor.cgColor
        }
    }
    @IBInspectable var shadowRadius:CGFloat = 0{
        didSet{
            layer.shadowRadius = shadowRadius
        }
    }
    @IBInspectable var shadowOpacity:CGFloat = 0 {
        didSet{
            layer.shadowOpacity = Float(shadowOpacity)
        }
    }
    @IBInspectable var shadowOffSetY:CGFloat = 0{
        didSet{
            layer.shadowOffset.height = shadowOffSetY
        }
    }
}
