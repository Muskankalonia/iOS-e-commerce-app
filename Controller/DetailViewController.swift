//
//  DetailViewController.swift
//  shoppingApp
//
//  Created by MUSKAN on 07/12/20.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var detailTextLabel: UILabel!
    @IBOutlet weak var addToOrderButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        super.viewDidLoad()
        addToOrderButton.layer.cornerRadius = 5.0
    }
    
    @IBAction func addToCartBtnTapped (_ sender: UIButton){
        UIView.animate(withDuration: 0.3) {
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
    }
  

    @IBAction func backButtonPressed(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
    }
}
