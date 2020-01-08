//
//  FifthOne.swift
//  animationSwift
//
//  Created by cyl on 2020/1/8.
//  Copyright © 2020 cyl. All rights reserved.
//

import UIKit
import ImageIO
import MobileCoreServices
class FifthOne: UIViewController {
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //这是将GIF变为图片
        
//        let gifPath:String = Bundle.main.path(forResource: "plane", ofType: "gif")!
//        let gifData:Data = try!Data(contentsOf: URL(fileURLWithPath: gifPath))
//
//        let gifDataSource:CGImageSource = CGImageSourceCreateWithData(gifData as CFData, nil)!
//        let gifImageCount:Int = CGImageSourceGetCount(gifDataSource)
//        for i in 0...gifImageCount-1 {
//            let imageref:CGImage? = CGImageSourceCreateImageAtIndex(gifDataSource, i, nil)
//            let image:UIImage = UIImage(cgImage: imageref!, scale: UIScreen.main.scale, orientation: .up)
//            let imageData = UIImage.pngData(image)
//            var docs = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
//            let documentsDirectory = docs[0]
//            let imagepath = documentsDirectory+"/\(i)"+".png"
//            try? imageData()?.write(to: URL(fileURLWithPath: imagepath))
//            print("\(imagepath)")
//
//        }
        
        
        //这是将图片变为GIF
//        let images = NSMutableArray.init()
//        for i in 0...66 {
//            let imagePath = "/Users/cyl/Documents/GitHub/ios-coreanimation/animationSwift/animationSwift/第4章/\(i).png"
//            let image = UIImage(named: imagePath)!
//            images.add(image)
//
//        }
//
//        var docs = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
//        let documentsDirectory = docs[0]
//        let gifPath = "/Users/cyl/Documents/GitHub/ios-coreanimation/animationSwift/animationSwift/第4章"+"/myPlane.gif"
//        print(gifPath)
//        let url = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, gifPath as CFString, .cfurlposixPathStyle, false)
//        let destion = CGImageDestinationCreateWithURL(url!, kUTTypeGIF, images.count, nil)
//
//
//        let cgimagePropertiesDic = [kCGImagePropertyGIFDelayTime as String:0.05]
//
//        let cgimagePropertitesDestDic = [kCGImagePropertyGIFDictionary as String:cgimagePropertiesDic]
//        for cgimage in images {
//            CGImageDestinationAddImage(destion!,(cgimage as AnyObject).cgImage!!, cgimagePropertitesDestDic as CFDictionary?)
//        }
//            let gifPropertiesDic = NSMutableDictionary.init()
//            gifPropertiesDic.setValue(kCGImagePropertyColorModelRGB, forKey: kCGImagePropertyColorModel as String)
//            gifPropertiesDic.setValue(16, forKey: kCGImagePropertyDepth as String)
//            gifPropertiesDic.setValue(1, forKey: kCGImagePropertyGIFLoopCount as String)
//
//            let gifDictionaryDestDic = [kCGImagePropertyGIFDictionary as String:gifPropertiesDic]
//            CGImageDestinationSetProperties(destion!, gifDictionaryDestDic as CFDictionary?)
//            CGImageDestinationFinalize(destion!)
            
        
        //这是GIF图像显示
        var images:[UIImage] = []
        
        for i in 0...66 {
            let imagePath = "/Users/cyl/Documents/GitHub/ios-coreanimation/animationSwift/animationSwift/第4章/\(i).png"
            let image = UIImage(named: imagePath)!
            images.append(image)
        }
        
        let imageView = UIImageView.init(frame: self.view.bounds)
        imageView.contentMode = .center
        self.view.addSubview(imageView)
        imageView.animationImages = images
        imageView.animationDuration = 5
        imageView.animationRepeatCount = 2
        imageView.startAnimating()
        
        
        
        
        
        
        
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
