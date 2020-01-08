//
//  FifthOne.swift
//  animationSwift
//
//  Created by cyl on 2020/1/8.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit

class FifthOne: UIViewController {
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let gifPath:String = Bundle.main.path(forResource: "plane", ofType: "gif")!
        let gifData:Data = try!Data(contentsOf: URL(fileURLWithPath: gifPath))
        
        let gifDataSource:CGImageSource = CGImageSourceCreateWithData(gifData as CFData, nil)!
        let gifImageCount:Int = CGImageSourceGetCount(gifDataSource)
        for i in 0...gifImageCount-1 {
            let imageref:CGImage? = CGImageSourceCreateImageAtIndex(gifDataSource, i, nil)
            let image:UIImage = UIImage(cgImage: imageref!, scale: UIScreen.main.scale, orientation: .up)
            let imageData = UIImage.pngData(image)
            var docs = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
            let documentsDirectory = docs[0]
            let imagepath = documentsDirectory+"/\(i)"+".png"
            try? imageData()?.write(to: URL(fileURLWithPath: imagepath))
            print("\(imagepath)")
            
            
            
            
            
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
