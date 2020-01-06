//
//  ViewController.swift
//  animationSwift
//
//  Created by cyl on 2020/1/6.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var loginButton:UIButton?
    

    override func viewWillAppear(_ animated: Bool) {
        
        //1、
//        UIView.animate(withDuration: 1) {
//            self.loginButton?.frame = CGRect(x: 20, y: self.loginButton!.frame.origin.y, width: (self.loginButton?.frame.size.width)!, height: (self.loginButton?.frame.size.height)!)
//        }
        
        //2、该方法q已被废弃
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(1)
//        loginButton!.frame = CGRect(x: 20, y: self.loginButton!.frame.origin.y, width: (self.loginButton?.frame.size.width)!, height: (self.loginButton?.frame.size.height)!)
//        UIView.commitAnimations()
        
        //3、位置动画
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(1)
//        loginButton!.center = CGPoint(x: 207, y: 255)
//        UIView.commitAnimations()
//        print("center:\(loginButton!.center)")
        
        //4、几何形状
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(1)
//        loginButton!.frame = CGRect(x: 20, y: 230, width: loginButton!.frame.size.width*0.7, height: loginButton!.frame.size.height*1.2)
//        UIView.commitAnimations()
        
        //淡入淡出
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(2)
//        loginButton!.frame = CGRect(x: 20, y: 230, width: loginButton!.frame.size.width*0.7, height: loginButton!.frame.size.height*1.2)
//        loginButton!.alpha = 1
//        UIView.commitAnimations()
        
        //颜色渐变
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(2)
//        loginButton!.frame = CGRect(x: 20, y: 230, width: loginButton!.frame.size.width*0.7, height: loginButton!.frame.size.height*1.2)
//        loginButton!.backgroundColor=UIColor.gray
//        UIView.commitAnimations()
        
        //缩放
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(1)
//        loginButton!.frame = CGRect(x: 20, y: 230, width: loginButton!.frame.size.width, height: loginButton!.frame.size.height)
//        loginButton!.transform = CGAffineTransform(scaleX: 0.7, y: 1.2)
//        UIView.commitAnimations()
        
        //旋转
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(1)
//        loginButton!.frame = CGRect(x: 20, y: 230, width: loginButton!.frame.size.width, height: loginButton!.frame.size.height)
//        let angle:CGFloat = CGFloat(M_PI_4)
//        loginButton!.transform = CGAffineTransform(rotationAngle: angle)
//        UIView.commitAnimations()
        
        //移动
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(1)
        loginButton!.transform = CGAffineTransform(translationX: 0, y: 300)
        UIView.commitAnimations()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        self.view.backgroundColor=UIColor.red
        
        
        
//        loginButton = UIButton(frame: CGRect(x: -394, y: 230, width: self.view.frame.width-20*2, height: 50))
        //用于移动的时候
        loginButton = UIButton(frame: CGRect(x: 20, y: 230, width: self.view.frame.width-20*2, height: 50))

        loginButton?.backgroundColor=UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        loginButton?.setTitle("登录", for:.normal)
        self.view.addSubview(loginButton!)
        
        loginButton!.alpha = 1;//淡入淡出的时候用
    }


}

