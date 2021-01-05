//
//  CreateNewAccount.swift
//  shoppingApp
//
//  Created by MUSKAN on 24/12/20.
//

import UIKit

class CreateNewAccount: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loginBtnTapped(_ sender: Any){
        dismiss(animated: true, completion: nil)
    }

}
