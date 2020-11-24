//
//  SignUpViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var viewModel: SignUpViewModelProtocol?
    
    var tableView = UITableView(frame: .zero, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupNavigationBar()
        setupItem()
    }
    

}
