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
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        self.view.backgroundColor=UIColor.red
        
        loginButton = UIButton(frame: CGRect(x: -394, y: 230, width: self.view.frame.width-20*2, height: 50))
        loginButton?.backgroundColor=UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        loginButton?.setTitle("登录", for:.normal)
        self.view.addSubview(loginButton!)
    }


}

