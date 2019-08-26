//
//  Store.swift
//  Glasses Store
//
//  Created by Yehia Samak on 8/19/19.
//  Copyright © 2019 Muhammad Ewaily. All rights reserved.
//

import Foundation
class Store {
    @objc dynamic private var name : String;
    private var addresses : [Address]
    private var phoneNumbers  : [String]
    private var glasses : [Item]
    @objc dynamic private var id : Int = 0;
    
    init(name : String) {
        self.name = name;
        addresses  = [Address]();
        phoneNumbers = [String]()
        glasses = [Item]();
    }
}
