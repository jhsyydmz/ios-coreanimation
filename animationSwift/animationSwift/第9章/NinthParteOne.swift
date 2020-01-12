//
//  NinthParteOne.swift
//  animationSwift
//
//  Created by cyl on 2020/1/12.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class NinthParteOne: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //火焰效果
//        self.view.backgroundColor = .black
//        let emitterCell = CAEmitterCell()
//        emitterCell.name = "fire"
//        emitterCell.emissionLongitude = CGFloat(Double.pi)
//        emitterCell.velocity = -1
//        emitterCell.velocityRange = 50
//        emitterCell.emissionRange = 1.1
//        emitterCell.yAcceleration = -200
//        emitterCell.scaleSpeed = 0.3
//        emitterCell.color = UIColor(red: 0.8, green: 04, blue: 0.2, alpha: 0.1).cgColor
//        emitterCell.contents = UIImage(named: "fire")!.cgImage
//
//        let emitterLayer = CAEmitterLayer()
//        emitterLayer.position = self.view.center
//        emitterLayer.emitterSize = CGSize(width: 50, height: 10)
//        emitterLayer.renderMode = .additive
//        emitterLayer.emitterShape = .line
//        emitterLayer.emitterCells = [emitterCell]
//        self.view.layer.addSublayer(emitterLayer)
//        emitterLayer.setValue(500, forKeyPath: "emitterCells.fire.birthRate")
//        emitterLayer.setValue(1, forKeyPath: "emitterCells.fire.lifetime")
        
        //霓虹灯效果
        self.view.backgroundColor = .black
        let emitterCell = CAEmitterCell()
        emitterCell.name = "nenolight"
        emitterCell.emissionLongitude = CGFloat(Double.pi*2)
        emitterCell.velocity = 50
        emitterCell.velocityRange = 50
        emitterCell.scaleSpeed = -0.2
        emitterCell.scale = 0.1
        emitterCell.greenSpeed = -0.1
        emitterCell.redSpeed = -0.2
        emitterCell.blueSpeed = 0.1
        emitterCell.alphaSpeed = -0.2
        emitterCell.birthRate = 100
        emitterCell.lifetime = 4
        emitterCell.color = UIColor.white.cgColor
        emitterCell.contents = UIImage(named: "nenolight")!.cgImage
        
        let emitterLayer = CAEmitterLayer()
        emitterLayer.position = self.view.center
        emitterLayer.emitterSize = CGSize(width: 2, height: 2)
        emitterLayer.renderMode = .backToFront
        emitterLayer.emitterMode = .outline
        emitterLayer.emitterShape = .circle
        emitterLayer.emitterCells = [emitterCell]
        self.view.layer.addSublayer(emitterLayer)
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
