//
//  TenthPartOne.swift
//  animationSwift
//
//  Created by cyl on 2020/1/12.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class TenthPartOne: UIViewController {

    let colorArray = NSMutableArray.init()
    let layerArray = NSMutableArray.init()

    let audioBarNum = 15
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       // 指纹扫描效果
//        let image:UIImage = UIImage(named: "unLock.jpg")!
//        let imageView = UIImageView(image: image)
//        imageView.contentMode = .scaleAspectFit
//        imageView.frame = self.view.bounds
//        imageView.center = self.view.center
//        self.view.backgroundColor = .black
//        self.view.addSubview(imageView)
//
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = CGRect(x: 105, y: 350, width: 200, height: 330)
//        imageView.layer.addSublayer(gradientLayer)
//        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
//        gradientLayer.endPoint = CGPoint(x:0 , y: 1)
//        gradientLayer.colors = [UIColor.clear.cgColor,UIColor.white.cgColor,UIColor.clear.cgColor]
//        gradientLayer.locations = [0.0,0.1,0.2]
//
//
//        let gradientAnimation = CABasicAnimation()
//        gradientAnimation.keyPath = "locations"
//        gradientAnimation.fromValue = [0.0,0.1,0.2]
//        gradientAnimation.toValue = [0.8,0.9,1.0]
//        gradientAnimation.duration = 3.0
//        gradientAnimation.repeatCount = 10
//        gradientLayer.add(gradientAnimation, forKey: nil)
        
        //音响音量跳动效果
        setColorArray()
        self.view.backgroundColor = .black
        for i  in 0...audioBarNum {
            let h:CGFloat = 150
            let w:CGFloat = (self.view.frame.width-10)/CGFloat(audioBarNum)
            let x:CGFloat = 20
            let y:CGFloat = 50
            let cview = UIView.init(frame: CGRect(x: w*CGFloat(i)+x, y: y, width: w-x, height: h))
            self.view.addSubview(cview)
            
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = cview.bounds
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0, y: 1)
            cview.layer.addSublayer(gradientLayer)
            layerArray.add(gradientLayer)
            
            Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(colorChange), userInfo: nil, repeats: true)
            
            
            
        }
        
    }
    
    func setColorArray() -> Void {
        let color1 = UIColor(red: 255/255.0, green: 127/255.0, blue: 79/255.0, alpha: 1)
        let color2 = UIColor(red: 138/255.0, green: 206/255.0, blue: 245/255.0, alpha: 1)
        let color3 = UIColor(red: 216/255.0, green: 114/255.0, blue: 213/255.0, alpha: 1)
        let color4 = UIColor(red: 51/255.0, green: 207/255.0, blue: 48/255.0, alpha: 1)
        let color5 = UIColor(red: 102/255.0, green: 150/255.0, blue: 232/255.0, alpha: 1)
        let color6 = UIColor(red: 255/255.0, green: 105/255.0, blue: 177/255.0, alpha: 1)
        let color7 = UIColor(red: 187/255.0, green: 56/255.0, blue: 201/255.0, alpha: 1)
        let color8 = UIColor(red: 255/255.0, green: 163/255.0, blue: 0/255.0, alpha: 1)
        let color9 = UIColor(red: 255/255.0, green: 93/255.0, blue: 210/255.0, alpha: 1)
        let color10 = UIColor(red: 61/255.0, green: 146/255.0, blue: 255/255.0, alpha: 1)
        let color11 = UIColor(red: 25/255.0, green: 146/255.0, blue: 255/255.0, alpha: 1)
        
        colorArray.add(color1)
        colorArray.add(color2)
        colorArray.add(color3)
        colorArray.add(color4)
        colorArray.add(color5)
        colorArray.add(color6)
        colorArray.add(color7)
        colorArray.add(color8)
        colorArray.add(color9)
        colorArray.add(color10)
        colorArray.add(color11)

    }
    @objc func colorChange(){
        for layer in layerArray {
            
            let cindex:Int = Int(arc4random_uniform(11))
            let color:UIColor = colorArray.object(at: cindex) as! UIColor
            let colors = [
                UIColor.clear.cgColor,
                color.cgColor
            ]
            let layer = layer as! CAGradientLayer
            layer.colors = colors
            layer.locations = [0,1.0]
            let gradientAnimation = CABasicAnimation()
            gradientAnimation.keyPath = "locations"
            let beginValue = Float(arc4random_uniform(11))/10.0
            gradientAnimation.fromValue = [beginValue,beginValue]
            gradientAnimation.toValue = [1.0,1.0]
            gradientAnimation.duration = 0.4
            layer.add(gradientAnimation, forKey: nil)
            
            
            
            
            
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
