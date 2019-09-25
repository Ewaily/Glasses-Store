//
//  DetailedGlassesViewController.swift
//  Glasses Store
//
//  Created by Yehia Samak on 9/18/19.
//  Copyright © 2019 Muhammad Ewaily. All rights reserved.
//

import UIKit

class DetailedGlassesViewController: UIViewController {
  
    @IBOutlet weak var imageSliderCollectionView: UICollectionView!
    
    @IBOutlet weak var sliderPageController: UIPageControl!
    
    
    @IBOutlet weak var tryOnButton: UIButton!
    
    @IBOutlet weak var buyButton: UIButton!
    var glasses : Glasses?;
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = glasses?.name;
        imageSliderCollectionView.delegate = self;
        imageSliderCollectionView.dataSource = self;
        tryOnButton.roundButtonDesign();
        buyButton.roundButtonDesign();
        
        // Do any additional setup after loading the view.
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
extension DetailedGlassesViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let gl = glasses{
           return gl.images.count;
        }
        return 0;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imagesSliderCell", for: indexPath);
        let imageView = cell.viewWithTag(33) as! UIImageView
        imageView.image = glasses?.images[indexPath.row];
        return cell;
    }
    
    
}
extension DetailedGlassesViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0);
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = imageSliderCollectionView.frame.size;
        return CGSize(width: size.width, height: size.height);
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0;
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0;
    }
}
