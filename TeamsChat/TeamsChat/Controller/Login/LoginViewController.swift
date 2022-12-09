//
//  LoginViewController.swift
//  TeamsChat
//
//  Created by Ronak Sankhala on 08/12/22.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onRegisterButtonTapped(_ sender: UIBarButtonItem) {
        let registerVC = RegisterViewController()
        navigationController?.pushViewController(registerVC, animated: true)
    }
}
