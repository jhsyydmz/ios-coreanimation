//
//  LineChartView.swift
//  animationSwift
//
//  Created by cyl on 2020/1/13.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

let PNGreen = UIColor(red: 77/255.0, green: 186/255.0, blue: 122/255.0, alpha: 1)

class LineChartView: UIView {

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
        chartLine.lineCap = .round
        chartLine.lineJoin = .round
        chartLine.fillColor = UIColor.white.cgColor
        chartLine.lineWidth = 5.0
        chartLine.strokeEnd = 0.0
        self.layer.addSublayer(chartLine)
        drawLineChart()
    }
    func drawLineChart() -> Void {
        chartLine.strokeEnd = 1.0
        chartLine.add(pathAnimation, forKey: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        let line = UIBezierPath()
        line.lineWidth = 10.0
        line.lineCapStyle = .round
        line.lineJoinStyle = .round
        line.move(to: CGPoint(x: 70, y: 260))
        line.addLine(to: CGPoint(x: 140, y: 100))
        line.addLine(to: CGPoint(x: 210, y: 240))
        line.addLine(to: CGPoint(x: 280, y: 170))
        line.addLine(to: CGPoint(x: 350, y: 220))
        chartLine.path = line.cgPath
        chartLine.strokeColor = PNGreen.cgColor
        pathAnimation.keyPath = "strokeEnd"
        pathAnimation.timingFunction = CAMediaTimingFunction(name: .linear)
        pathAnimation.fromValue = 0.0
        pathAnimation.toValue = 1.0
        pathAnimation.autoreverses = false
        pathAnimation.duration = 2.0
    }
}
