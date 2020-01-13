//
//  BezierView.swift
//  animationSwift
//
//  Created by cyl on 2020/1/13.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class BezierView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override func draw(_ rect: CGRect) {
        let color1 = UIColor(red: 255/255.0, green: 127/255.0, blue: 79/255.0, alpha: 1)
        let color2 = UIColor(red: 77/255.0, green: 186/255.0, blue: 122/255.0, alpha: 1)
        
        let bezierPath = UIBezierPath()
        
        bezierPath.lineWidth = 10.0
        bezierPath.lineCapStyle = .round
        bezierPath.lineJoinStyle = .round
        bezierPath.move(to: CGPoint(x: 150, y: 150))
        bezierPath.addLine(to: CGPoint(x: 250, y: 250))
        bezierPath.addLine(to: CGPoint(x: 350, y: 150))
        bezierPath.close()
        color1.setStroke()
        color2.setFill()
        bezierPath.fill()
        bezierPath.stroke()
    }
}
