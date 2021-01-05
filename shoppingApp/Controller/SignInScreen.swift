//
//  SignInScreen.swift
//  shoppingApp
//
//  Created by MUSKAN on 24/12/20.
//

import UIKit
import FBSDKLoginKit

class SignInScreen: UIViewController ,  LoginButtonDelegate{
    
    

    
        

    override func viewDidLoad() {
        super.viewDidLoad()
        if let token = AccessToken.current,
            !token.isExpired {
            // User is logged in, do work such as go to next view controller.
        }
        
        else{
        let loginBtn = FBLoginButton()
            loginBtn.frame = CGRect(x: 70, y: 550, width: 250, height: 40)
            loginBtn.delegate = self
            
            loginBtn.permissions = ["public_profile", "email"]
            view.addSubview(loginBtn)
        }
       
    }
    
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        
    }
    
    

    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
