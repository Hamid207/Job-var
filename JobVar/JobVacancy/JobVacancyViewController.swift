//
//  JobVacancyViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class JobVacancyViewController: UIViewController { //Is axtarmaq yeni butun elanlar
    
    var jobVacancyViewModel: JobVacancyViewModelProtocol?
    
    let jobVacancyTableView = UITableView(frame: .zero, style: .plain)
    private let searchControl = UISearchController(searchResultsController: nil)
    lazy var actitvityIndicator = makeActivityIndicatorView()
    lazy var refreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.tintColor = UIColor(named: "MainColor")
        return refreshControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationItem.title = "JobVacancyViewController"
        setupNavigationBar()
        setupITem()
//        searchControl.obscuresBackgroundDuringPresentation = false
//        searchControl.searchBar.placeholder = "Search"
//        navigationItem.searchController = searchControl
        definesPresentationContext = true
        jobVacancyTableView.refreshControl = refreshControl
        refreshCOntroll()
        jobVacancyViewModel?.firebaseSet?.creatAllResume()
        jobVacancyViewModel?.firebaseSet?.observeAddResumeModel(tableView: jobVacancyTableView)
        DispatchQueue.main.async {
            self.jobVacancyTableView.reloadData()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        actitvityIndicator.startAnimating()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        jobVacancyViewModel?.firebaseSet?.removeAllObserverr()
    }

}
