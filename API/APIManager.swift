//
//  APIManager.swift
//  shoppingApp
//
//  Created by MUSKAN on 09/12/20.
//

import Foundation
import Alamofire
import PromiseKit

class APIManager {
    func fetchData()-> Promise<String> {
        
        return Promise{
            resolver in
            
            Alamofire.request("https://viristore.herokuapp.com/api/v1/shops/get-shop", method: .post, parameters: ["shop" : "5f131026a7cd970017e7b655"]).responseString{
                response in
                switch(response.result){
                case.success(let data):
                   print("success")
                    resolver.fulfill(data)
                case.failure(let error):
                    
                    resolver.reject(error)
                    
                }
            }
        }
        
        
       
    }
    
    func fetchProducts()-> Promise<String> {
        return Promise{
        resolver in
            
            Alamofire.request("https://viristore.herokuapp.com/api/v1/products/get-all-products", method: .post, parameters: ["shopId" : "5f131026a7cd970017e7b655"]).responseString{
                response in
                switch(response.result){
                case .success(let data):
                    
                    resolver.fulfill(data)
                case .failure(let error):
                    print(error)
                    resolver.reject(error)
                
                }
            }
    }
    }
}
