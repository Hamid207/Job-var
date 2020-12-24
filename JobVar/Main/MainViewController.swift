//
//  MainViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class MainViewController: UIViewController {
    
    var mainViewModel: MainViewModelProtocol?
    
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
    
    var collectionVIewARRayTest = ["Elan yerləşdirin ", "Butun elanlar", "Is axtaranlar"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationItem.title = "MainViewController"
        setupView()
        mainViewModel?.firebaseSet?.creatAllResume()
        mainViewModel?.firebaseSet?.observeAddResumeModel(tableView: mainTableView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tabBarController?.tabBar.isHidden = false
        mainViewModel?.firebaseSet?.observeAddResumeModel(tableView: mainTableView)
        //mainViewModel?.firebaseSet?.creatAllResume()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        mainViewModel?.firebaseSet?.removeAllObserverr()
    }
}
