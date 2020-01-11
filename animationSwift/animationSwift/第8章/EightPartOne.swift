//
//  EightPartOne.swift
//  animationSwift
//
//  Created by cyl on 2020/1/10.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit


class EightPartOne: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let loginButton = MyButton.init(frame: CGRect(x: 20, y: 230, width: self.view.frame.width-20*2, height: 50))
        
        loginButton.backgroundColor = UIColor(red: 50/255, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        loginButton.setTitle("登录", for: .normal)
        loginButton.addTarget(self, action: #selector(viewloginAction(_:event:)), for: .touchUpInside)
        self.view.addSubview(loginButton)
        
    }
    @objc func viewloginAction(_ sender:UIButton, event:UIEvent) -> Void {
        let bt = sender as! MyButton
        bt.startButtonAnimation(sender, mevent: event)
        
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
