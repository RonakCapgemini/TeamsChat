//
//  ViewController.swift
//  TeamsChat
//
//  Created by Ronak Sankhala on 07/12/22.
//

import UIKit

class ConversationsViewController: UIViewController {
    
    var dataViewModel = DataViewModel()

    @IBOutlet weak var customNavigationBar: CustomNavigationBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        initViewModel()
        customNavigationBar.titleLabel.text = "Chat"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {

//            let loginVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
//            let navController = UINavigationController(rootViewController: loginVC)
//            navController.modalPresentationStyle = .fullScreen
//            self.present(navController, animated: true, completion: nil)
        }
    }
    
    func initViewModel(){
        dataViewModel.reloadTableView = {
            DispatchQueue.main.async { /*self.tableView.reloadData()*/ }
        }
        dataViewModel.showError = {
            DispatchQueue.main.async { self.showAlert("Ups, something went wrong.") }
        }
        dataViewModel.showLoading = {
            DispatchQueue.main.async { /*self.activityIndicator.startAnimating()*/ }
        }
        dataViewModel.hideLoading = {
            DispatchQueue.main.async { /*self.activityIndicator.stopAnimating()*/ }
        }
        dataViewModel.getData()
    }


}

