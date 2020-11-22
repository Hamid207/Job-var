//
//  FavoritesDetailViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class FavoritesDetailViewController: UIViewController {
    
    var viewModel: FavoritesDetailViewModelProtocol?
    var tableView = UITableView(frame: .zero, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupNavigationBar()
        setupIem()
    }
 
}
