//
//  TwelfthPatrOne.swift
//  animationSwift
//
//  Created by cyl on 2020/1/14.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

let UISCREEN_WIDTH = UIScreen.main.bounds.width
let UISCREEN_HEIGHT = UIScreen.main.bounds.height
var replicatorLayer = CAReplicatorLayer()
var iv_earth:UIImageView?
var iv_sun:UIImageView?

class TwelfthPatrOne: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let background = UIImageView.init(frame: CGRect(x: 0, y: 0, width: UISCREEN_WIDTH, height: UISCREEN_HEIGHT))
        background.image = UIImage(named: "background.jpg")
        self.view.addSubview(background)
        
        iv_earth = UIImageView.init(frame: CGRect(x: (UISCREEN_WIDTH - 50.0)/2.0+150, y: (UISCREEN_HEIGHT - 50)/2, width: 50, height: 50))
        iv_earth?.image = UIImage(named:"earth")
        
        iv_sun = UIImageView.init(frame: CGRect(x: 0, y:0, width: 50, height: 50))
        iv_sun?.image = UIImage(named:"sun")
        iv_sun?.center = self.view.center
        replicatorLayer.addSublayer(iv_earth!.layer)
        replicatorLayer.addSublayer(iv_sun!.layer)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let path = UIBezierPath()
        path.addArc(withCenter: CGPoint(x: self.view.center.x, y: self.view.center.y), radius: 150, startAngle: 0, endAngle: CGFloat(Double.pi*2), clockwise: true)
        path.close()
        let canimation = CAKeyframeAnimation(keyPath: "position")
        canimation.path = path.cgPath
        canimation.duration = 10
        canimation.repeatCount = MAXFLOAT
        replicatorLayer.instanceCount = 10
        replicatorLayer.instanceDelay = 0.2
        self.view.layer.addSublayer(replicatorLayer)
        iv_earth?.layer.add(canimation, forKey: nil)
        
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
