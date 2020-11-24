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
        view.backgroundColor = UIColor(named: "TextColor")
        setupItem()
    }
    
    
    override func viewDidLayoutSubviews() {
        logInButton.layer.borderWidth = 1.5
        //logInButton.layer.borderColor = UIColor(named: "MainColor")?.cgColor
        logInButton.layer.borderColor = UIColor.black.cgColor

        logInButton.layer.cornerRadius = 10
        
        signUpButton.layer.cornerRadius = 10
        
        logoImage.layer.cornerRadius = 50
    }
    

}
