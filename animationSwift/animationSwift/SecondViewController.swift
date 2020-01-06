//
//  SecondViewController.swift
//  animationSwift
//
//  Created by cyl on 2020/1/6.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var loginButton = UIButton.init(type: .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loginButton.frame = CGRect(x: 20, y: 230, width: self.view.frame.size.width-20*2.0, height: 50)
        
        loginButton.backgroundColor=UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        loginButton.setTitle("登录", for: .normal)
        loginButton.addTarget(self, action: #selector(viewloginAction), for: .touchUpInside)
        self.view.addSubview(loginButton)
    }
    
    @objc func viewloginAction(){
        
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(2)
//        UIView.setAnimationRepeatCount(3)
        UIView.setAnimationRepeatAutoreverses(true)
        UIView.setAnimationDelegate(self)
        let angle = CGFloat(M_PI)
        loginButton.transform = CGAffineTransform(rotationAngle: angle)
        loginButton.frame = CGRect(x: 400, y: 0, width: loginButton.frame.width*0.1, height: loginButton.frame.height*0.1)
        loginButton.alpha = 0;
        UIView.setAnimationDidStop(#selector(viewanimationisEnd))
        UIView.commitAnimations()
        
    }
    
    @objc func viewanimationisEnd(){
        print("AnimationEnd!")
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
