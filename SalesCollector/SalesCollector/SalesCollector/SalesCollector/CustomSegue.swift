//
//  CustomSegue.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/17.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit

class CustomSegue: UIStoryboardSegue {
    
    override func perform() {
        
        DetailsSegue()
    }
    
    func DetailsSegue(){
        let toViewController = self.destination
        let fromViewController = self.source
//        let containerView = destination.view.superview
        toViewController.modalPresentationStyle = . fullScreen
        
        fromViewController.view.superview?.insertSubview(toViewController.view, aboveSubview: fromViewController.view)
        toViewController.view.transform = CGAffineTransform(translationX: -fromViewController.view.frame.size.width, y: 0)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, options: UIView.AnimationOptions.curveEaseInOut, animations: {
                   toViewController.view.transform = CGAffineTransform(translationX: 0, y: 0)
               }) { (finished) in
                   fromViewController.present(toViewController, animated: false, completion: nil) //Method call changed
               }
        
//        fromViewController.view.layer.add(CATransition().segueFromLeft(), forKey: kCATransition)
//        fromViewController.present(toViewController,animated: true,completion: nil)
//        containerView.
//        let 
    }
}

class CustomDisappearSegue: UIStoryboardSegue {
    
    override func perform() {
        
        disappear()
        
    }
    func disappear(){
        let toViewController = self.destination
        let fromViewController = self.source
        
        fromViewController.view.superview?.insertSubview(toViewController.view, aboveSubview: fromViewController.view)
        toViewController.view.transform = CGAffineTransform(translationX: fromViewController.view.frame.size.width*2, y: 0)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, options: UIView.AnimationOptions.curveEaseInOut, animations: {
                   toViewController.view.transform = CGAffineTransform(translationX: 0, y: 0)
               }) { (finished) in
                   fromViewController.dismiss(animated: false, completion: nil)
               }
        
        
    }
    
}
