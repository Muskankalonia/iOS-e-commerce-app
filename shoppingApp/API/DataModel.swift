//
//  DataModel.swift
//  shoppingApp
//
//  Created by MUSKAN on 13/12/20.
//

import Foundation

class MainCategory: Codable{
    var categories : [CategoryDetail]
    var data : ProductCategory
}
class ProductCategory: Codable{
    var categories : [String]
    var subCategories : [String]
    var deliverySlots : [String]
    var deliveryCharges : [String]
    var _id : String
    var name : String
    var loginid : String
    var address : String
    var phone : String
    var profilepic : String
    var id : String
    
    
}

class CategoryDetail: Codable {
    var _id : String
    var categoryName : String
    var __v : Int
}
