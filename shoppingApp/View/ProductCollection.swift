//
//  ProductCollection.swift
//  shoppingApp
//
//  Created by MUSKAN on 12/12/20.
//

import UIKit

class ProductCollection: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {

    override func awakeFromNib() {
      
        self.delegate = self
        self.dataSource = self
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        return cell
    }
    
}
