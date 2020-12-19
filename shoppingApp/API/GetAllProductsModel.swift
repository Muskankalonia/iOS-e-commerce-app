//
//  GetAllProductsModel.swift
//  shoppingApp
//
//  Created by MUSKAN on 16/12/20.
//

import Foundation

class getProducts :Codable{
    var status :String
    var data :mainProduct
}
class mainProduct :Codable{
    var products :[Products]
}
class Products : Codable{
    var isActive :Bool
    var isFeatured :Bool
    var isRecommended :Bool
    var isTrending :Bool
    var _id :String
    var name :String
    var categoryId :String
    var subCategoryId :String
    var quantityAvailable :Int
    var price :String
    var image :String
    var unit :String
    var discount :Int
    var shopId :String
    var category :String
    var subCategory :String
    var __v :Int
    var id :String
    
}
