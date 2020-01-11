//
//  EightPartTwo.swift
//  animationSwift
//
//  Created by cyl on 2020/1/10.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class EightPartTwo: UIViewController {

    
    var singleTap1:UITapGestureRecognizer?
    var singleTap2:UITapGestureRecognizer?
    var singleTap3:UITapGestureRecognizer?
    
    var buttonView1:ButtonView?
    var buttonView2:ButtonView?
    var buttonView3:ButtonView?

    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        buttonView1 = ButtonView(frame: CGRect(x: 100, y: 150, width: 210, height: 70))
        buttonView2 = ButtonView(frame: CGRect(x: 100, y: 275, width: 210, height: 70))
        buttonView3 = ButtonView(frame: CGRect(x: 100, y: 400, width: 210, height: 70))

        singleTap1 = UITapGestureRecognizer(target: self, action: #selector(viewAction1))
        singleTap2 = UITapGestureRecognizer(target: self, action: #selector(viewAction2))
        singleTap3 = UITapGestureRecognizer(target: self, action: #selector(viewAction3))
        
        buttonView1?.addGestureRecognizer(singleTap1!)
        buttonView2?.addGestureRecognizer(singleTap2!)
        buttonView3?.addGestureRecognizer(singleTap3!)

        self.view.addSubview(buttonView1!)
        self.view.addSubview(buttonView2!)
        self.view.addSubview(buttonView3!)

    }
    
    @objc func viewAction1() -> Void {
        buttonView1!.startAnimation()
    }
    @objc func viewAction2() -> Void {
        buttonView2!.startAnimation()
    }
    @objc func viewAction3() -> Void {
        buttonView3!.startAnimation()
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
