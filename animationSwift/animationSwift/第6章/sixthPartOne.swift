//
//  sixthPartOne.swift
//  animationSwift
//
//  Created by cyl on 2020/1/8.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class sixthPartOne: UIViewController {
    var loginButton = UIButton.init(type: .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loginButton.frame  = CGRect(x: 20, y: 230, width: self.view.frame.width-20*2, height: 50)
        loginButton.backgroundColor = UIColor(red: 50/255, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        loginButton.setTitle("登录", for: .normal)
        self.view.addSubview(loginButton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //位置
//        let animation:CABasicAnimation = CABasicAnimation()
//        animation.keyPath = "position"
//        let positionX = loginButton.frame.origin.x+0.5*loginButton.frame.size.width
//        let positionY = loginButton.frame.origin.y+0.5*loginButton.frame.size.height+300
//
//        animation.toValue = NSValue(cgPoint: CGPoint(x: positionX, y: positionY))
//        animation.duration = 2.0
//        animation.fillMode = .forwards
//        animation.isRemovedOnCompletion = false
//        loginButton.layer.add(animation, forKey: nil)
        
        //缩放
//        let animation = CABasicAnimation()
//        animation.keyPath = "transform.scale.y"
//        animation.fromValue = 1.0
//        animation.toValue = 0.8
//        animation.duration = 2.0
//        animation.fillMode = .forwards
//        animation.isRemovedOnCompletion = false
//        loginButton.layer.add(animation, forKey: nil)
        
        //旋转
//        let animation = CABasicAnimation()
//        animation.keyPath = "transform.rotation"
//        animation.toValue = 3.14/2
//        animation.duration = 2.0
//        animation.fillMode = .forwards
//        animation.isRemovedOnCompletion = false
//        loginButton.layer.add(animation, forKey: nil)
        
        //位移
//        let animation = CABasicAnimation()
//        animation.keyPath = "transform.translation.y"
//        animation.toValue = 100
//        animation.duration = 2.0
//        animation.fillMode = .forwards
//        animation.isRemovedOnCompletion = false
//        loginButton.layer.add(animation, forKey: nil)
        
        //圆角
//        let animation = CABasicAnimation()
//        animation.keyPath = "cornerRadius"
//        animation.toValue = 15
//        animation.duration = 2.0
//        animation.fillMode = .forwards
//        animation.isRemovedOnCompletion = false
//        loginButton.layer.add(animation, forKey: nil)
        
        //边框
//        loginButton.layer.borderColor = UIColor.gray.cgColor
//        loginButton.layer.cornerRadius = 10.0
//        let animation = CABasicAnimation()
//        animation.keyPath = "borderWidth"
//        animation.toValue = 10
//        animation.duration = 2.0
//        animation.fillMode = .forwards
//        animation.isRemovedOnCompletion = false
//        loginButton.layer.add(animation, forKey: nil)
        
        //颜色渐变
//        let animation = CABasicAnimation()
//        animation.keyPath = "backgroundColor"
//        animation.fromValue = UIColor.green.cgColor
//        animation.toValue = UIColor.red.cgColor
//        animation.duration = 2.0
//        animation.fillMode = .forwards
//        animation.isRemovedOnCompletion = false
//        loginButton.layer.add(animation, forKey: nil)
        
        //颜色
//        loginButton.layer.borderWidth = 5
//        let animation = CABasicAnimation()
//         animation.keyPath = "borderColor"
//         animation.fromValue = UIColor.green.cgColor
//         animation.toValue = UIColor.cyan.cgColor
//         animation.duration = 2.0
//         animation.fillMode = .forwards
//         animation.isRemovedOnCompletion = false
//         loginButton.layer.add(animation, forKey: nil)
        
        //淡入
//        let animation = CABasicAnimation()
//        animation.keyPath = "opacity"
//        animation.fromValue = UIColor.green.cgColor
//        animation.toValue = 1.0
//        animation.duration = 2.0
//        animation.fillMode = .forwards
//        animation.isRemovedOnCompletion = false
//        loginButton.layer.add(animation, forKey: nil)
        
        //阴影渐变
        loginButton.layer.shadowColor = UIColor.gray.cgColor
        loginButton.layer.shadowOpacity = 0.5
        let animation = CABasicAnimation()
        animation.keyPath = "shadowOffset"
        animation.fromValue = UIColor.green.cgColor
        animation.toValue = NSValue(cgSize: CGSize(width: 10, height: 10))
        animation.duration = 0
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        loginButton.layer.add(animation, forKey: nil)
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
