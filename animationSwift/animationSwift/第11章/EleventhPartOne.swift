//
//  EleventhPartOne.swift
//  animationSwift
//
//  Created by cyl on 2020/1/13.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class EleventhPartOne: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //1、
//        let bezier = BezierView.init(frame: CGRect(x: 0, y:0, width: self.view.bounds.width, height: self.view.bounds.height/2.0))
//        self.view.addSubview(bezier)
        
        //2、
        let linechart = LineChartView.init(frame: CGRect(x: 0, y:0, width: self.view.bounds.width, height: self.view.bounds.height/2.0))
        self.view.addSubview(linechart)
        
        //3、
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
