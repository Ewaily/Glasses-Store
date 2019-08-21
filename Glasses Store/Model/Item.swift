//
//  Item.swift
//  Glasses Store
//
//  Created by Yehia Samak on 8/19/19.
//  Copyright © 2019 Muhammad Ewaily. All rights reserved.
//

import Foundation

class Item{
    @objc dynamic private var name : String;
    @objc dynamic private var price : Double;
    @objc dynamic private var description : String  = "This item has no description";
    @objc dynamic private var id : Int = 0;
    
    init(name:String, price : Double){
        self.name = name;
        self.price = price;
    }
    init(name:String, price : Double, description : String){
        self.name = name;
        self.price = price;
        self.description = description;
    }
}
