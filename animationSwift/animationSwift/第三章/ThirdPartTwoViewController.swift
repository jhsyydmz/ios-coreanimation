//
//  ThirdPartTwoViewController.swift
//  animationSwift
//
//  Created by cyl on 2020/1/7.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class ThirdPartTwoViewController: UIViewController {
    
    var imageView = UIImageView.init(frame: UIScreen.main.bounds)
    var myindex = Int()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView.image=UIImage.init(named: "turntable")
        imageView.contentMode = .scaleAspectFit
        self.view.addSubview(imageView)
        animationCircle()
        
    }
    
    func animationCircle() -> Void {
        UIView.animateKeyframes(withDuration: 0.2, delay: 0, options: .overrideInheritedOptions, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/4) {
                self.myindex += 1
                let angle = CGFloat(Double.pi/2)*CGFloat(self.myindex)
                self.imageView.transform = CGAffineTransform(rotationAngle: angle)
            }
            UIView.addKeyframe(withRelativeStartTime: 1/4, relativeDuration: 1/4) {
                self.myindex += 1
                let angle = CGFloat(Double.pi/2)*CGFloat(self.myindex)
                self.imageView.transform = CGAffineTransform(rotationAngle: angle)
            }
            UIView.addKeyframe(withRelativeStartTime: 2/4, relativeDuration: 1/4) {
                self.myindex += 1
                let angle = CGFloat(Double.pi/2)*CGFloat(self.myindex)
                self.imageView.transform = CGAffineTransform(rotationAngle: angle)
            }
            UIView.addKeyframe(withRelativeStartTime: 3/4, relativeDuration: 1/4) {
                self.myindex += 1
                let angle = CGFloat(Double.pi/2)*CGFloat(self.myindex)
                self.imageView.transform = CGAffineTransform(rotationAngle: angle)
            }
        }) { (Bool) in
            self.animationCircle()
        }
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
