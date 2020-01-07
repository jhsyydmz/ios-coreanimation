//
//  BlackHoleView.swift
//  animationSwift
//
//  Created by cyl on 2020/1/7.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class BlackHoleView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var blackHoleRadius = Float.init()
    
    func blackHoleIncrease(_ radius:Float) -> Void {
        blackHoleRadius = radius
        self.setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        let ctx:CGContext = UIGraphicsGetCurrentContext()!
        ctx.addArc(center: CGPoint(x: self.center.x, y: self.center.y), radius: CGFloat(blackHoleRadius), startAngle: 0, endAngle: CGFloat(M_PI*2), clockwise: false)
        ctx.fillPath()
        
    }
}
