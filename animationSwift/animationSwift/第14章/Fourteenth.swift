//
//  Fourteenth.swift
//  animationSwift
//
//  Created by cyl on 2020/1/15.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class Fourteenth: UIViewController {
    var imageViewArray = NSMutableArray.init()
    
    var imageView1 = UIImageView.init(frame: CGRect(x: 100, y: 100, width: 200, height: 250))
    var imageView2 = UIImageView.init(frame: CGRect(x: 100, y: 100, width: 200, height: 250))
    var imageView3 = UIImageView.init(frame: CGRect(x: 100, y: 150, width: 300, height: 200))

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        imageViewArray = [imageView1,imageView2,imageView3]
        for i in 0...imageViewArray.count-1 {
            let imagetmp = imageViewArray.object(at: i) as! UIImageView
            let imageName:String = "a\(i).jpg"
            imagetmp.image = UIImage(named: imageName)
            imagetmp.layer.anchorPoint.y = 0.0
            view.addSubview(imagetmp)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        for i in 0...imageViewArray.count-1 {
            var imageTransform = CATransform3DIdentity
            imageTransform.m34 = -0.005
            imageTransform = CATransform3DTranslate(imageTransform, 0.0, 50.0, 0.0)
            imageTransform = CATransform3DScale(imageTransform, 0.95, 0.6, 1.0)
            if i==0 {
                imageTransform = CATransform3DRotate(imageTransform, CGFloat(Double.pi/4/2), 0.0, 1.0, 0.0)
            }else if i == 1{
                imageTransform = CATransform3DRotate(imageTransform, CGFloat(-Double.pi/4/2), 0.0, 1.0, 0.0)
            }
            let imageView = imageViewArray.object(at: i) as!UIImageView
            let animation = CABasicAnimation(keyPath: "transform")
            animation.fromValue = NSValue(caTransform3D: imageView.layer.transform)
            animation.toValue = NSValue(caTransform3D: imageTransform)
            animation.duration = 3


            let animBounds = CABasicAnimation()
            animBounds.keyPath = "position"
            animBounds.duration = 3
            if i==0 {
                animBounds.toValue = NSValue(cgPoint: CGPoint(x: 100, y: 10))
            }else if i == 1{
                animBounds.toValue = NSValue(cgPoint: CGPoint(x: 300, y: 10))
            }else{
                animBounds.toValue = NSValue(cgPoint: CGPoint(x: 200, y: 20))
            }

            let animGroup = CAAnimationGroup()
            animGroup.duration = 3
            animGroup.repeatCount = 1
            animGroup.isRemovedOnCompletion = false
            animGroup.fillMode = .forwards
            animGroup.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
            animGroup.animations = [animation,animBounds]
            imageView.layer.add(animGroup, forKey: "\(i)")

        }
        
//        for i in 0...(imageViewArray.count)-1{
//
//            var imageTransform = CATransform3DIdentity
//            imageTransform.m34 = -0.005;
//            imageTransform = CATransform3DTranslate(
//                imageTransform, 0.0, 50.0, 0.0)
//            imageTransform = CATransform3DScale(
//                imageTransform, 0.95, 0.6, 1.0)
//
//            if i==0 {
//                imageTransform = CATransform3DRotate(
//                    imageTransform, CGFloat(M_PI_4/2), 0.0, 1.0, 0.0)
//            }else if i==1{
//                imageTransform = CATransform3DRotate(
//                    imageTransform, CGFloat(-M_PI_4/2), 0.0, 1.0, 0.0)
//            }
//
//            let imageView:UIImageView = imageViewArray.object(at: i) as! UIImageView
//            let animation = CABasicAnimation(keyPath: "transform")
//            animation.fromValue = NSValue(caTransform3D:
//                imageView.layer.transform)
//            animation.toValue = NSValue(caTransform3D: imageTransform)
//            animation.duration = 3
//
//
//            let animBounds:CABasicAnimation = CABasicAnimation()
//            animBounds.keyPath = "position"
//            animBounds.duration = 3
//            if i==0 {
//                animBounds.toValue = NSValue(cgPoint:CGPoint(x: 100, y: 10))
//            }else if i==1{
//                animBounds.toValue = NSValue(cgPoint:CGPoint(x: 300, y: 10))
//            }else{
//                animBounds.toValue = NSValue(cgPoint:CGPoint(x: 200, y: 20))
//            }
//
//
//            let animGroup:CAAnimationGroup = CAAnimationGroup()
//            animGroup.duration = 3
//            animGroup.repeatCount = 1
//            animGroup.isRemovedOnCompletion = false
//            animGroup.fillMode=CAMediaTimingFillMode.forwards
//            animGroup.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
//            animGroup.animations = [animation,animBounds]
//            imageView.layer.add(animGroup, forKey: "\(i)")
//
//        }
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
