//
//  CircleView.swift
//  animationSwift
//
//  Created by cyl on 2020/1/10.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

protocol CircleDelegate {
    func circleAnimationStop()
}
class CircleView: UIView,CAAnimationDelegate {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var lineWidth:NSNumber = 3.0
    var strokeColor = UIColor(red: 25/255, green: 155/255.0, blue: 200/255.0, alpha: 1.0)
    var ccircle = CAShapeLayer()
    var delegate:CircleDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let startAngle = -90.0/180*CGFloat(Double.pi)
        let endAngle = -90.01/180*CGFloat(Double.pi)//这个数字很关键
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: frame.width/2, y: frame.height/2), radius: frame.height/2-2, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        
        ccircle.path = circlePath.cgPath
        ccircle.lineCap = .round
        ccircle.fillColor = UIColor.clear.cgColor
        ccircle.lineWidth = lineWidth as! CGFloat
        self.layer.addSublayer(ccircle)
        
    }
    func stroketChart() -> Void {
        ccircle.lineWidth = lineWidth as! CGFloat
        ccircle.strokeColor = strokeColor.cgColor
        let pathAnimation = CABasicAnimation()
        pathAnimation.keyPath = "strokeEnd"
        pathAnimation.delegate = self
        pathAnimation.duration = 3
        pathAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        pathAnimation.fromValue = 0
        pathAnimation.toValue = 1.0
        pathAnimation.setValue("strokeEndAnimationcircle", forKey: "groupborderkeycircle")
        ccircle.add(pathAnimation, forKey: "strokeEndAnimationcircle")
    }
    func animationDidStop(_ anim:CAAnimation, finished flag: Bool) -> Void {
        delegate?.circleAnimationStop()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
