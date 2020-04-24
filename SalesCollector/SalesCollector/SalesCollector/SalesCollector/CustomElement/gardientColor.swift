//
//  gardientColor.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/21.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
@IBDesignable
class gardientColor: UIView {

    
   
     @IBInspectable var firstColor: UIColor = UIColor.clear {
       didSet {
           updateView()
        }
     }
     @IBInspectable var secondColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    override class var layerClass: AnyClass {
       get {
          return CAGradientLayer.self
       }
    }
    
        
     func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [firstColor, secondColor].map{$0.cgColor}
     }
    

}
