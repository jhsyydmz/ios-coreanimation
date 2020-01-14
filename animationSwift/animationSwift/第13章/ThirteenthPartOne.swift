//
//  ThirteenthPartOne.swift
//  animationSwift
//
//  Created by cyl on 2020/1/14.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit


class ThirteenthPartOne: UIViewController {

    var imageview:UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageview = UIImageView.init(frame: CGRect(x: 0, y: 0, width: 400, height: 300))
        imageview?.center = self.view.center
        imageview?.image = UIImage(named: "image.jpg")
        imageview?.contentMode = .scaleAspectFit
        imageview?.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.view.addSubview(imageview!)
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(4)
        imageview?.layer.transform = CATransform3DMakeRotation(CGFloat(M_PI), 1, 1, 1)
        UIView.commitAnimations()
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
