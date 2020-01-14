//
//  EleventhPartOne.swift
//  animationSwift
//
//  Created by cyl on 2020/1/13.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class EleventhPartOne: UIViewController {
    
    var barchar : BarChartView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //1、
//        let bezier = BezierView.init(frame: CGRect(x: 0, y:0, width: self.view.bounds.width, height: self.view.bounds.height/2.0))
//        self.view.addSubview(bezier)
        
        //2、
//        let linechart = LineChartView.init(frame: CGRect(x: 0, y:0, width: self.view.bounds.width, height: self.view.bounds.height/2.0))
//        self.view.addSubview(linechart)
        
        //3、
        barchar = BarChartView.init(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        self.view.addSubview(barchar!)
        addDrawChartButton()
        addAxes()
    }
    
    func addAxes() -> Void {
        for i in 0...5 {
            let yAxesTitle = "SEP"+"\(i)"
            let yAxesLabel = UILabel.init(frame: CGRect(x: 70+(CGFloat(i)-1)*60, y: 400, width: 50, height: 20))
            yAxesLabel.text = yAxesTitle
            self.view.addSubview((yAxesLabel))
            
        }
    }
    func addDrawChartButton() -> Void {
        let bt_line = UIButton()
        bt_line.frame = CGRect(x: self.view.frame.width-100, y: 20, width: 100, height: 50)
        bt_line.setTitle("Line chart", for: .normal)
        bt_line.setTitleColor(PNGreen, for: .normal)
        bt_line.addTarget(self, action: #selector(drawChartMethod), for: .touchUpInside)
        self.view.addSubview(bt_line)
        
    }
    
    @objc func drawChartMethod() -> Void {
        barchar?.drawLineChart()
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
