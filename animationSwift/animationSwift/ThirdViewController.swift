//
//  ThirdViewController.swift
//  animationSwift
//
//  Created by cyl on 2020/1/6.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var imagepic = UIImageView.init(image: UIImage.init(named: "turntable.png"))
    var myindex:NSInteger = 0
    
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDelegate(self)
        UIView.setAnimationDidStop(#selector(viewanimationend))
        UIView.setAnimationDuration(0.1)
        let angle = CGFloat(M_PI_2*4*10)
        imagepic.transform = CGAffineTransform(rotationAngle: angle)
        UIView.commitAnimations()
        
    }
    @objc func viewanimationend(){
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDelegate(self)
        UIView.setAnimationDidStop(#selector(viewanimationend))
        UIView.setAnimationDuration(0.1)
        let angleStart = CGFloat(M_PI_2)
        myindex += 1
        
        let angle = CGFloat(myindex)*angleStart
        imagepic.transform = CGAffineTransform(rotationAngle: angle)
        UIView.commitAnimations()
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imagepic.frame = CGRect(x: 0, y: 0, width: 250 , height: 250)
        imagepic.center = self.view.center
        self.view.addSubview(imagepic)

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
