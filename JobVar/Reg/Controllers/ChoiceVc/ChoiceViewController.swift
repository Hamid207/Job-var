//
//  ChoiceViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import UIKit

class ChoiceViewController: UIViewController {
    
    var viewModel: ChoiceViewModelProtocol?
    
    //var tableView = UITableView(frame: .zero, style: .plain)
    var logoImage = UIImageView()
    var logInButton = UIButton()
    var signUpButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupItem()
    }
    
//    override func viewWillLayoutSubviews() {
//        logInButton.layer.borderWidth = 0.7
//        logInButton.layer.borderColor = UIColor(named: "MainColor")?.cgColor
//        logInButton.layer.cornerRadius = 5
//
//        signUpButton.layer.cornerRadius = 5
//
//    }
    
    
    override func viewDidLayoutSubviews() {
        logInButton.layer.borderWidth = 0.7
        logInButton.layer.borderColor = UIColor(named: "MainColor")?.cgColor
        logInButton.layer.cornerRadius = 10
        
        signUpButton.layer.cornerRadius = 10
    }
    

}
