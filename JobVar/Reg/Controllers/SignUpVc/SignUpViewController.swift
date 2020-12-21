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
        view.backgroundColor = UIColor(named: "TextColor")
        setupNavigationBar()
        setupItem()
        //MARK: - klavyatura cixanda view yuxari qalxir
        NotificationCenter.default.addObserver(forName: UITextField.keyboardWillShowNotification, object: nil, queue: nil) { (nc) in
            self.view.frame.origin.y = -50
        }
        NotificationCenter.default.addObserver(forName: UITextField.keyboardWillHideNotification, object: nil, queue: nil) { (nc) in
            self.view.frame.origin.y = 0.0
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.barTintColor = UIColor(named: "TextColor")
        navigationController?.navigationBar.prefersLargeTitles = false
    }
}
