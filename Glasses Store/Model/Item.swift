//
//  Item.swift
//  Glasses Store
//
//  Created by Yehia Samak on 8/19/19.
//  Copyright © 2019 Muhammad Ewaily. All rights reserved.
//

import UIKit

class Item{
    private (set) var name : String;
     private var price : Double;
     private var description : String  = "This item has no description";
    @objc dynamic private var id : Int = 0;
    private (set) var mainImage : UIImage;
    
    init(name:String, price : Double, image : UIImage){
        self.name = name;
        self.price = price;
        self.mainImage = image;
    }
    init(name:String, price : Double, image : UIImage, description : String){
        self.name = name;
        self.price = price;
        self.description = description;
        self.mainImage = image;

    }
}
