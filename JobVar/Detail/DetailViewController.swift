//
//  DetailViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//


import UIKit

class DetailViewController: UIViewController {
    
    var detailViewModel: DetailViewModelProtocol?
    let detailTableiew = UITableView(frame: .zero, style: .plain)
    let deteailCell = "DetailTableViewCellTest"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupNavigationBar()
        setupView()
//        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        navigationController?.navigationBar.barStyle = .blackOpaque
    }
   
}
