//
//  LogInViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import UIKit

class LogInViewController: UIViewController {
    
    var viewModel: LogInViewModelProtocol?
    
    var tableView = UITableView(frame: .zero, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupNavigationBar()
        setupItem()
    }
    
}
