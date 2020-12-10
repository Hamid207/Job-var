//
//  UserViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit
import Firebase
class UserViewController: UIViewController {
    var viewModel: UserViewModelProtocol?
    
    var tableView = UITableView(frame: .zero, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupItem()
        //viewModel?.firebaseSet?.currentUser(withPath: "istifadeciler", child: "userInfo")
    }
 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
//        self.viewModel?.firebaseSet?.observe()
//        DispatchQueue.main.async {
//            self.tableView.reloadData()
//        }
        viewModel?.firebaseSet?.firebaseObserve(withPath: "istifadeciler", child: "userInfo")
    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(true)
//        viewModel?.firebaseSet?.removeAllObserverr()
//    }
}
