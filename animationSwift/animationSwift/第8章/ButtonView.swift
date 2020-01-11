//
//  ButtonView.swift
//  animationSwift
//
//  Created by cyl on 2020/1/10.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class ButtonView: UIView ,CAAnimationDelegate,CircleDelegate{
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    let FreshBlue = UIColor(red: 25/255, green: 155/255.0, blue: 200/255.0, alpha: 1.0)
    let FreshGreen = UIColor(red: 150/255, green: 203/255.0, blue: 25/255.0, alpha: 1.0)

    var cview : UIView?
    var viewborder : UIView?
    var button_x:CGFloat = 0
    var button_y:CGFloat = 0
    var button_w:CGFloat = 0
    var button_h:CGFloat = 0
    var label:UILabel?
    var circleView:CircleView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        button_x = frame.origin.x
        button_y = frame.origin.y
        button_w = frame.size.width
        button_h = frame.size.height
        cview = UIView(frame: CGRect(x: 0, y: 0, width: button_w, height: button_h))
        cview?.backgroundColor = FreshBlue
        viewborder = UIView(frame: CGRect(x: 0, y: 0, width: button_w, height: button_h))
        viewborder?.backgroundColor = UIColor.clear
        viewborder?.layer.borderColor = FreshBlue.cgColor
        viewborder?.layer.borderWidth = 3.0
        circleView = CircleView.init(frame: CGRect(x: 0, y: 0, width: button_w, height: button_h))
        self.addSubview(cview!)
        self.addSubview(viewborder!)
        self.addSubview(circleView!)
        circleView?.delegate = self
        
        label = UILabel(frame: CGRect(x: 0, y: 0, width: button_w, height: button_h))
        label?.text = "UpLoad"
        label?.textAlignment = NSTextAlignment.center
        label?.textColor = UIColor.white
        label?.font = UIFont.systemFont(ofSize: 20)
        self.addSubview(label!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startAnimation() -> Void {
        label?.removeFromSuperview()
        //1
        let animMakeBigger = CABasicAnimation()
        animMakeBigger.keyPath = "cornerRadius"
        animMakeBigger.fromValue = 5.0
        animMakeBigger.toValue = button_h/2.0
        //2
        let animBound = CABasicAnimation()
        animBound.keyPath = "bounds"
        animBound.toValue = NSValue(cgRect: CGRect(x: button_x+(button_w - button_h)/2, y: button_h, width: button_h, height: button_h))
        //3
        let animAlpha = CABasicAnimation()
        animAlpha.keyPath = "opacity"
        animAlpha.toValue = 0
        //a
        let animGroup = CAAnimationGroup()
        animGroup.duration = 5
        animGroup.repeatCount = 1
        animGroup.isRemovedOnCompletion = false
        animGroup.fillMode = .forwards
        animGroup.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        animGroup.animations = [animMakeBigger,animBound,animAlpha]
        
        //4
        let animborder = CABasicAnimation()
        animborder.keyPath = "borderColor"
        animborder.toValue = UIColor(red: 224/255, green: 224/255.0, blue: 224/255.0, alpha: 1.0).cgColor
        //b
        let animGroupAll = CAAnimationGroup()
        animGroupAll.duration = 5
        animGroupAll.repeatCount = 1
        animGroupAll.isRemovedOnCompletion = false
        animGroupAll.fillMode = .forwards
        animGroupAll.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        animGroupAll.animations = [animMakeBigger,animBound,animborder]
        
        animGroupAll.delegate = (self as CAAnimationDelegate)
        animGroupAll.setValue("allMyAnimationsBoard", forKey: "groupborderkey")
        CATransaction.begin()
        cview?.layer.add(animGroup, forKey: "allMyAnimation")
        viewborder?.layer.add(animGroupAll, forKey: "allMyAnimationsBoard")
        CATransaction.commit()
        
    }
    
    func circleAnimationStop() {
        circleView?.removeFromSuperview()
        self.startAnimationSpread()
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        if flag {
            let animType = anim.value(forKey: "groupborderkey")
            let animType1 = anim.value(forKey: "groupborderkey1")
            if animType != nil {
                if (animType as! NSString).isEqual(to: "allMyAnimationsBoard") {
                    circleView?.stroketChart()
                }
            }else if animType1 != nil{
                if (animType1 as! NSString).isEqual(to: "allMyAnimationsBoardspread1") {
                    label?.frame = CGRect(x: 0, y: 0, width: button_w, height: button_h)
                    label?.text = "Complete"
                    label?.textAlignment = .center
                    label?.textColor = .white
                    label?.font = UIFont.systemFont(ofSize: 20)
                    self.addSubview(label!)
                }
            }
            
        }
    }
    func startAnimationSpread(){
        let animMakeBigger:CABasicAnimation = CABasicAnimation()
        animMakeBigger.keyPath = "cornerRadius"
        animMakeBigger.fromValue=button_h/2.0
        animMakeBigger.toValue=0
        let animBounds:CABasicAnimation = CABasicAnimation()
        animBounds.keyPath = "bounds"
        animBounds.fromValue = NSValue(cgRect:CGRect(x: button_x+(button_w-button_h)/2, y: button_h, width: button_h, height: button_h))
        animBounds.toValue = NSValue(cgRect:CGRect(x: 0, y: 0, width: button_w, height: button_h))
        let animAlpha:CABasicAnimation = CABasicAnimation()
        animAlpha.keyPath = "opacity";
        animAlpha.toValue = 1.0
        let animBackground:CABasicAnimation = CABasicAnimation()
        animBackground.keyPath = "backgroundColor"
        animBackground.toValue = FreshGreen.cgColor
        let group:CAAnimationGroup = CAAnimationGroup()
        group.duration = 1
        group.repeatCount = 1
        group.isRemovedOnCompletion = false
        group.fillMode = .forwards
        group.timingFunction = CAMediaTimingFunction(name:.easeInEaseOut)
        group.animations = [animMakeBigger,animBounds,animAlpha,animBackground]
        let animBorder:CABasicAnimation = CABasicAnimation()
        animBorder.keyPath = "borderColor"
        animBorder.toValue = FreshGreen.cgColor
        let allGroup:CAAnimationGroup = CAAnimationGroup()
        allGroup.duration = 1
        allGroup.repeatCount = 1
        allGroup.isRemovedOnCompletion = false
        allGroup.fillMode = .forwards
        allGroup.timingFunction = CAMediaTimingFunction(name:.easeInEaseOut)
        allGroup.animations = [animMakeBigger,animBounds,animAlpha,animBorder]
        CATransaction.begin()
        cview?.layer.add(group, forKey: "allMyAnimationspread1")
        allGroup.setValue("allMyAnimationsBoardspread1", forKey: "groupborderkey1")
        allGroup.delegate = self
        viewborder?.layer.add(allGroup, forKey: "allMyAnimationsBoardspread1")
        CATransaction.commit()
    }
}
