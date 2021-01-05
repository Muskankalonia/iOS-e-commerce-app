//
//  CartViewController.swift
//  shoppingApp
//
//  Created by MUSKAN on 20/12/20.
//

import UIKit

class CartViewController: UIViewController {

    @IBOutlet weak var CartTable: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        CartTable.delegate = self
        CartTable.dataSource = self
        if CategoryVC.OrderNum>=1{
            CartTable.isHidden = false
        } else{
            CartTable.isHidden = true
        }
        
    }
    
    
  
}

extension CartViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CategoryVC.OrderNum + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        if row < CategoryVC.OrderNum {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CartItemCell") as! CartItemCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "OrderDetailCell") as! OrderDetailCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let row = indexPath.row
        
        if row < CategoryVC.OrderNum{
            return CGFloat(100)
        } else {
            return CGFloat(500)
        }
    }
}
