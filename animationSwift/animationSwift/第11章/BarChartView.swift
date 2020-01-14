//
//  BarChartView.swift
//  animationSwift
//
//  Created by cyl on 2020/1/14.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class BarChartView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var chartLine = CAShapeLayer()
    var pathAnimation = CABasicAnimation()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.clipsToBounds = true
        chartLine.lineCap = .square
        chartLine.lineJoin = .round
        chartLine.fillColor = UIColor.gray.cgColor
        chartLine.lineWidth = 30.0
        chartLine.strokeEnd = 0.0
        self.layer.addSublayer(chartLine)
        drawLineChart()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func drawLineChart() -> Void {
        chartLine.strokeEnd = 1.0
        chartLine.add(pathAnimation, forKey: nil)
        
    }
    override func draw(_ rect: CGRect) {
        let line = UIBezierPath()
        line.lineWidth = 30.0
        line.lineCapStyle = .square
        line.lineJoinStyle = .round
        for i in 0...4 {
            let x = CGFloat(60+70*i)
            let y = CGFloat(100+20*i)
            line.move(to: CGPoint(x: x, y: 215))
            line.addLine(to: CGPoint(x: x, y: y))
            
        }
        chartLine.path = line.cgPath
        chartLine.strokeColor = PNGreen.cgColor
        pathAnimation.keyPath = "strokeEnd"
        pathAnimation.timingFunction = CAMediaTimingFunction(name: .linear)
        pathAnimation.fromValue = 0.0
        pathAnimation.toValue = 1.0
        pathAnimation.autoreverses = false
        pathAnimation.duration = 1.0
    }
}
