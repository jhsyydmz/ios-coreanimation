//
//  thirdPartOneViewController.swift
//  animationSwift
//
//  Created by cyl on 2020/1/7.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class thirdPartOneViewController: UIViewController {
    
    var imageViewAirport = UIImageView.init(image: UIImage.init(named: "Airport.png"))
    var imageViewPlane = UIImageView.init(image: UIImage.init(named: "Plane.png"))
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageViewAirport.frame = UIScreen.main.bounds
        imageViewAirport.contentMode = .scaleAspectFit
        self.view.addSubview(imageViewAirport)
        
        imageViewPlane.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        imageViewPlane.contentMode = .scaleAspectFit
        self.view.addSubview(imageViewPlane)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animateKeyframes(withDuration: 2, delay: 0, options: .calculationModeCubic, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/2) {
                self.imageViewPlane.frame = CGRect(x: 300, y: 300, width: 30, height: 30)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 1/2, relativeDuration: 1/2) {
                self.imageViewPlane.frame = CGRect(x: 300, y: 300, width: 100, height: 100)
            }
            
        }) { (Bool) in
            print("done")
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
