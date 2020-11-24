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
        view.backgroundColor = UIColor(named: "TextColor")
        setupNavigationBar()
        setupItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.barTintColor = UIColor(named: "TextColor")
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
}
