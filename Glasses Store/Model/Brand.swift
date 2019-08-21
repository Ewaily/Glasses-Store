//
//  File.swift
//  Glasses Store
//
//  Created by Yehia Samak on 8/19/19.
//  Copyright © 2019 Muhammad Ewaily. All rights reserved.
//

import Foundation

class  Brand {
    private let name : String;
    private var items : [Item];
    private var id = 0;
    
    init(name : String){
        items = [Item]();
        self.name = name;
    }
}
