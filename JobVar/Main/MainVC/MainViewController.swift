//
//  MainViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class MainViewController: UIViewController {
    var mainViewModel: MainViewModelProtocol?
    lazy var actitvityIndicator = makeActivityIndicatorView()
    
    var filtered = false
    
    let mainTableView = UITableView(frame: .zero, style: .plain)
    let mainCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        //        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return cv
    }()
    lazy var refreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.tintColor = UIColor(named: "MainColor")
        return refreshControl
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupView()
//        mainViewModel?.firebaseSet?.creatAllResume()
        configureRefreshControl ()
        actitvityIndicator.startAnimating()
//        mainViewModel?.firebaseSet?.userFilterObserve()
//        mainViewModel?.firebaseSet?.observeAddResumeModel(tableView: mainTableView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
//        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        navigationController?.navigationBar.barStyle = .default
        nav()
        tabBarController?.tabBar.isHidden = false
        DispatchQueue.main.async { [weak self] in
            self?.mainViewModel?.firebaseSet?.creatAllResume()
            self?.mainViewModel?.firebaseSet?.observeAddResumeModel(tableView: self!.mainTableView)
            self?.mainViewModel?.firebaseSet?.userFilterObserve()
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        mainViewModel?.firebaseSet?.removeAllObserverr()
    }
}


