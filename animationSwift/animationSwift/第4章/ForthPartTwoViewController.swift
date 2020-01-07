//
//  ForthPartTwoViewController.swift
//  animationSwift
//
//  Created by cyl on 2020/1/7.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class ForthPartTwoViewController: UIViewController {
    
    var blackHole = BlackHoleView.init()
    
    var timecc = Timer.init()
    var indexcc = Float.init()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        blackHole.frame = UIScreen.main.bounds
        blackHole.backgroundColor = UIColor.cyan
        self.view.addSubview(blackHole)
        indexcc = 0
        timecc = Timer.scheduledTimer(timeInterval: 1.0/30.0, target: self, selector: #selector(refushImage), userInfo: nil, repeats: true)
    }
    @objc func refushImage(){
        blackHole.blackHoleIncrease(indexcc)
        indexcc += 1
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
