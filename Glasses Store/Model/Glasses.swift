//
//  Glasses.swift
//  Glasses Store
//
//  Created by Yehia Samak on 8/19/19.
//  Copyright © 2019 Muhammad Ewaily. All rights reserved.
//

import UIKit

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
    private let color : Color;// this should be array of colors.
    //  should be for each color array of images.
    var favroite : Bool = false;
    private (set) var  images : [UIImage];
    
    init(name:String, price : Double, description : String, size : Size, store : Store, brand: Brand, color:Color, dimension : Dimension, image : UIImage, images : [UIImage] ){
        self.dimension = dimension;
        self.size = size;
        self.brand = brand;
        self.color = color;
        self.store = store;
        self.images = images;
        super.init(name: name, price: price, image: image, description: description);
    }
    
    
}
