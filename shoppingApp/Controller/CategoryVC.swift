//
//  CategoryVC.swift
//  shoppingApp
//
//  Created by MUSKAN on 05/12/20.
//

import UIKit

class CategoryVC: UIViewController {
    
     static var OrderNum = 0
    
    
 override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
   
    
    

}

extension CategoryVC: UICollectionViewDelegate {
   func collectionView(_ collectionView: ProductCollection, didSelectItemAt indexPath: IndexPath){
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
       
                present(detailVC, animated: true, completion: nil)
    }
    

}
