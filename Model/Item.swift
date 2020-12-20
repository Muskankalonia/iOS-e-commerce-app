//
//  Item.swift
//  shoppingApp
//
//  Created by MUSKAN on 07/12/20.
//

import UIKit

class item{
    public private(set) var image: UIImage
    public private(set) var name: String
    public private(set) var amount: String
    public private(set) var description: String
    public private(set) var price: Double
    
    init(image: UIImage, name: String, price: Double, amount: String, description: String){
        self.image = image
        self.name = name
        self.price = price
        self.amount = amount
        self.description = description
    }
}
