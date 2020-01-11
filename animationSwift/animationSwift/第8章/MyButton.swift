//
//  MyButton.swift
//  animationSwift
//
//  Created by cyl on 2020/1/10.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class MyButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var viewRadius = CGFloat.init()
    var countNum = Int.init()
    var ctimer = Timer.init()
    var circleCenterX = CGFloat.init()
    var circleCenterY = CGFloat.init()
    var targetAnimColor = UIColor(red: 216/255, green: 114/255, blue: 213/255, alpha: 0.8)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 50/255, green: 185/255, blue: 170/255, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    override func draw(_ rect: CGRect) {
        let ctx = UIGraphicsGetCurrentContext()
        let endangle = CGFloat(Double.pi*2)
        ctx?.addArc(center: CGPoint(x: circleCenterX, y: circleCenterY), radius: viewRadius, startAngle: 0, endAngle: endangle, clockwise: false)
        let stockColor = targetAnimColor
        stockColor.setStroke()
        stockColor.setFill()
        ctx?.fillPath()
        
        
    }
    
    func startButtonAnimation(_ msenderBt:UIButton,mevent:UIEvent) -> Void {
        
        self.isUserInteractionEnabled = true
        let button = msenderBt as UIView
        let touchSet = mevent.touches(for: button)! as NSSet
        let touchArray = touchSet.allObjects
        
        let touch1 = touchArray[0] as! UITouch
        let point1 = touch1.location(in: button)
        self.circleCenterX = point1.x
        self.circleCenterY = point1.y
        ctimer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(MyButton.mytimeaction), userInfo: nil, repeats: true)
        RunLoop.main.add(ctimer, forMode: .common)
    }
    
    @objc func mytimeaction() -> Void {
        countNum += 1
        let dismissTime = DispatchTime.now() + Double(Int64(0*NSEC_PER_SEC)) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: dismissTime) {
            self.viewRadius += 5
            self.setNeedsDisplay()
        }
        if countNum>50 {
            countNum=0
            viewRadius = 0
            ctimer.invalidate()
            DispatchQueue.main.asyncAfter(deadline: dismissTime) {
                self.viewRadius = 0
                self.setNeedsDisplay()
            }
            self.isUserInteractionEnabled = true
        }
    }
}

