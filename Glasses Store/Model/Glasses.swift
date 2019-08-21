//
//  Glasses.swift
//  Glasses Store
//
//  Created by Yehia Samak on 8/19/19.
//  Copyright © 2019 Muhammad Ewaily. All rights reserved.
//

import Foundation

enum Size{
    case Small
    case Medium
    case Large
}
enum Color{
    case Red
    case Blue
    case Green
    case Yellow
    case Orange
    case Purple
    case Brown
    case Black
    case White
}
class Glasses: Item {
    private var dimension : Dimension;
    private let size : Size;
    private let store : Store;
    private let brand : Brand;
    private let color : Color;
    
    
    init(name:String, price : Double, description : String, size : Size, store : Store, brand: Brand, color:Color, dimension : Dimension){
        self.dimension = dimension;
        self.size = size;
        self.brand = brand;
        self.color = color;
        self.store = store;
        super.init(name: name, price: price, description: description);
    }
    
    
}
