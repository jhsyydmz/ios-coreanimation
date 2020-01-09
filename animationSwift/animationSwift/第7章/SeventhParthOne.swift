//
//  SeventhParthOne.swift
//  animationSwift
//
//  Created by cyl on 2020/1/9.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class SeventhParthOne: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //淡出效果
//        let view = UIView()
//        view.backgroundColor = UIColor.red
//        view.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
//        self.view.addSubview(view)
//        let canimation = CAKeyframeAnimation()
//        canimation.duration = 5.0
//        canimation.keyPath = "opacity"
//        let valuseArray = [NSNumber(value: 0.95),
//                           NSNumber(value: 0.90),
//                           NSNumber(value: 0.88),
//                           NSNumber(value: 0.85),
//                           NSNumber(value: 0.35),
//                           NSNumber(value: 0.05),
//                           NSNumber(value: 0.05),
//                           NSNumber(value: 0.00)]
//        canimation.values = valuseArray
//        canimation.fillMode = .forwards
//        canimation.isRemovedOnCompletion = false
//        view.layer.add(canimation, forKey: nil)
        
        //任意路径动画
        
//        let imageview = UIImageView()
//        imageview.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
//        imageview.image = UIImage(named: "Plane.png")
//        self.view.addSubview(imageview)
        
        //直线
//        let pathLine = CGMutablePath()
//        pathLine.move(to: CGPoint(x: 50, y: 50))
//        pathLine.addLine(to: CGPoint(x: 300, y: 50))
        
        //圆弧
//        let pathArc = CGMutablePath()
//        pathArc.move(to: CGPoint(x: 50, y: 50))
//        pathArc.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: 0, endAngle: CGFloat(Double.pi/4), clockwise: true)
//
//
//        let canimation = CAKeyframeAnimation()
//        canimation.duration = 2.0
        //1、
//        canimation.path = pathLine
        //2/
//        canimation.path = pathArc
//        canimation.keyPath = "position"
//        canimation.fillMode = .forwards
//        canimation.isRemovedOnCompletion = false
//        imageview.layer.add(canimation, forKey: nil)
        
        
        //组合动画
        let loginButton = UIButton.init(type: .custom)
        loginButton.frame = CGRect(x: 20, y: 230, width: self.view.frame.width-20*2, height: 50)
        loginButton.backgroundColor=UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        loginButton.setTitle("登录", for: .normal)
        self.view.addSubview(loginButton)
        
        let rotate = CABasicAnimation()
        rotate.keyPath = "transform.rotation"
        rotate.toValue = Double.pi
        
        let scale = CABasicAnimation()
        scale.keyPath = "transform.scale"
        scale.toValue = 0
        
        let move = CABasicAnimation()
        move.keyPath = "transform.translation"
        move.toValue = NSValue(cgPoint: CGPoint(x: 217, y: -230))
        
        let canimationGroup = CAAnimationGroup()
        canimationGroup.animations = [rotate,scale,move]
        canimationGroup.duration = 2
        canimationGroup.fillMode = .forwards
        canimationGroup.isRemovedOnCompletion = false
        loginButton.layer.add(canimationGroup, forKey: nil)
        
        
        
        
        
        
        
        
        
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
