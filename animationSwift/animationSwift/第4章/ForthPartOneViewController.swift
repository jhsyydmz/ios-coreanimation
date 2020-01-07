//
//  ForthPartOneViewController.swift
//  animationSwift
//
//  Created by cyl on 2020/1/7.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class ForthPartOneViewController: UIViewController {

    var imageview = UIImageView.init(frame: UIScreen.main.bounds)
    var cindex = 0
    var timerc = Timer.init()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.addSubview(imageview)
        imageview.contentMode = .scaleAspectFit
        imageview.image = UIImage(named: "/Users/cyl/Documents/GitHub/ios-coreanimation/animationSwift/animationSwift/第4章/\(cindex).png")
        timerc = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(refushImage), userInfo: nil, repeats: true)
    }
    
    @objc func refushImage() -> Void {
        imageview.image = UIImage(named: "/Users/cyl/Documents/GitHub/ios-coreanimation/animationSwift/animationSwift/第4章/\(cindex).png")
        cindex+=1
        if cindex == 67 {
//            timerc.invalidate()
            cindex=0
            imageview.image = UIImage(named: "/Users/cyl/Documents/GitHub/ios-coreanimation/animationSwift/animationSwift/第4章/\(cindex).png")
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
