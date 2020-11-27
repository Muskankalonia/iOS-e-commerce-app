//
//  SliderCell.swift
//  Grocery
//
//  Created by MUSKAN on 27/11/20.
//

import UIKit

class SliderCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage! {
        didSet {
            imageView.image = image
        }
    }
}
