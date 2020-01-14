//
//  TwelfthPartTwo.swift
//  animationSwift
//
//  Created by cyl on 2020/1/14.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class TwelfthPartTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let replicatorLayer = CAReplicatorLayer()
        replicatorLayer.frame = CGRect(x: 0, y: 0, width: 414, height: 400)//修改这个值才能看到本质
        replicatorLayer.instanceCount = 20
        replicatorLayer.instanceTransform = CATransform3DMakeTranslation(20, 0, 0)
        replicatorLayer.instanceDelay = 0.2
        replicatorLayer.masksToBounds = true
        replicatorLayer.backgroundColor = UIColor.black.cgColor
        
        let layer = CALayer()
        layer.frame = CGRect(x: 14, y: 200, width: 10, height: 100)
        layer.backgroundColor = UIColor.red.cgColor
        replicatorLayer.addSublayer(layer)
        self.view.layer.addSublayer(replicatorLayer)
        let canimation = CABasicAnimation()
        canimation.keyPath = "position.y"
        canimation.duration = 0.5
        canimation.fromValue = 200
        canimation.toValue = 180
        canimation.autoreverses = true
        canimation.repeatCount = MAXFLOAT
        layer.add(canimation, forKey: nil)
        
        
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
