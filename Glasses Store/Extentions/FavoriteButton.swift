//
//  FavoriteButton.swift
//  Glasses Store
//
//  Created by Yehia Samak on 9/7/19.
//  Copyright © 2019 Muhammad Ewaily. All rights reserved.
//

import UIKit

class FavoriteButton: UIButton {

    var isOn : Bool = false;
    var glasses : Glasses?;
    override init(frame: CGRect) {
        super.init(frame: frame);
        initButton();
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        
        initButton();
    }
    
    func initButton(){
        
        
        addTarget(self, action: #selector(FavoriteButton.buttonPressed), for: .touchUpInside);
    }
    
    @objc func buttonPressed(){
        
       activateButton(on: !(glasses?.favroite ?? isOn))
        if let g = glasses{
            g.favroite = !g.favroite;
        }
    }
    
    func activateButton(on: Bool){
        isOn = on;
        let buttonImage : UIImage = ((on) ? UIImage(named: "redLike") : UIImage(named: "like"))!;
        
        setBackgroundImage(buttonImage, for: .normal);
    }
    
}
