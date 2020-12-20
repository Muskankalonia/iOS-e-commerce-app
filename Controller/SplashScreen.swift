//
//  SplashScreen.swift
//  shoppingApp
//
//  Created by MUSKAN on 13/12/20.
//

import UIKit

class SplashScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let api = APIManager()
        let request = api.fetchData()
        request.done{
            response in
            if let json = response.data(using: .utf8){
                let productCategories = try? JSONDecoder().decode(MainCategory.self, from: json)
                for product in (productCategories?.categories)!{
                    print(product.categoryName)
                }
            }
        }.catch { error in
            print(error)
        }
        
        let requestProduct = api.fetchProducts()
        requestProduct.done{
            response in
            if let json = response.data(using: .utf8){
                let productCategories = try? JSONDecoder().decode(getProducts.self, from: json)
//                for product in (productCategories?.data.products)!{
//                    print(product.name)
//                }
            }
        }.catch { error in
            print(error)
        }
       
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(startVC), userInfo: nil, repeats: false)
        
        
    }
    

    @objc func startVC(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
       let nextVC = storyboard.instantiateViewController(identifier: "NextVC")
        nextVC.modalPresentationStyle = .fullScreen
        nextVC.modalTransitionStyle = .crossDissolve
        present(nextVC, animated: true, completion: nil)
    }

}
