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
    //var testArray = [FeedResponse]()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupNavigationBar()
        setupView()
        navigationItem.title = "DetailViewController"

    }
    
}
