//
//  ViewController.swift
//  Glasses Store
//
//  Created by Muhammad Ewaily on 8/19/19.
//  Copyright © 2019 Muhammad Ewaily. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var shopWomanButton: UIButton!
    
    @IBOutlet weak var shopMenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        shopMenButton.roundButtonDesign();
        shopWomanButton.roundButtonDesign()
        
        //To see background Image instead of navigation bar
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        //To hide shadow of the navigation bar
        navigationController?.navigationBar.shadowImage = UIImage()
        
        
    }
 
}

extension  UIButton
{
    func roundButtonDesign()
    {
        self.layer.cornerRadius = self.frame.height/2
        self.layer.shadowColor = UIColor.darkGray.cgColor;
        self.layer.shadowRadius = 3;
        self.layer.shadowOpacity = 0.4;
        self.layer.shadowOffset = CGSize(width: 0, height: 0);
    }
//    func addingBorders()
//    {
//        self.layer.borderColor = hexStringToUIColor(hex: "18500A").cgColor
//        self.layer.borderWidth = 2
//        
//    }
//            func hexStringToUIColor (hex:String) -> UIColor {
//                var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
//    
//                if (cString.hasPrefix("#")) {
//                    cString.remove(at: cString.startIndex)
//                }
//    
//                if ((cString.count) != 6) {
//                    return UIColor.gray
//                }
//    
//                var rgbValue:UInt32 = 0
//                Scanner(string: cString).scanHexInt32(&rgbValue)
//    
//                return UIColor(
//                    red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
//                    green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
//                    blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
//                    alpha: CGFloat(1.0)
//                )
//            }
}


