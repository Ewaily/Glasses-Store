//
//  CardTabelViewCell.swift
//  Glasses Store
//
//  Created by Yehia Samak on 9/4/19.
//  Copyright © 2019 Muhammad Ewaily. All rights reserved.
//

import UIKit

class CardTabelViewCell: UITableViewCell {

    @IBOutlet weak var glassesImageView: UIImageView!
    
    @IBOutlet weak var glassesNameLabel: UILabel!
    
    @IBOutlet weak var favoriteButton: UIButton!
    
    var glass : Glasses?;
    
    func setGlassesCard(for glasses : Glasses){
        glass = glasses;
        glassesImageView.image = glasses.mainImage;
        glassesNameLabel.text = glasses.name;
        activateButton(glasses: glasses)
        
        self.separatorInset = UIEdgeInsets.zero
        self.layoutMargins = UIEdgeInsets.zero
        
       
        
    }
    override func prepareForReuse() {
        super.prepareForReuse();
        if let g = glass {
            activateButton(glasses: g);
        }
       
    }
    func activateButton(glasses : Glasses){
        let buttonImage : UIImage = ((glasses.favroite) ? UIImage(named: "redLike") : UIImage(named: "like"))!;
        favoriteButton.setBackgroundImage(buttonImage, for: .normal);
    }
    @IBAction func favoritePressed(_ sender: UIButton) {
        if let g = glass {
            g.favroite = !g.favroite;
            activateButton(glasses: g);
            print("\(g.name)")
        }
    }
    
}
