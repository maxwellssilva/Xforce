//
//  ViewController.swift
//  Xforce
//
//  Created by Maxwell da Silva e Silva on 14/03/23.
//

import UIKit

class LoginViewController: UIViewController {

    var screenPrincipal: LoginScreen?
    
    override func loadView() {
        self.screenPrincipal = LoginScreen()
        self.view = self.screenPrincipal
    }
    
    override func viewDidLoad() {
        super.viewDidLoad() 
    }
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

