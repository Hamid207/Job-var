//
//  UserViewController + Extension.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Firebase
import UIKit

extension UserViewController {
    
    func setupItem() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "settings"), style: .done, target: self, action: #selector(barButtonTarget))
        navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "MainColor")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Exit", style: .done, target: self, action: #selector(firebaseExit))
        navigationItem.leftBarButtonItem?.tintColor = .red
        //tableView
        tableView.tableFooterView = UIView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.register(UserTableViewCell.self, forCellReuseIdentifier: "userTableViewCellId")
        tableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //createResumeTableView.sectionFooterHeight = 10
        tableView.sectionHeaderHeight = 10
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    @objc func barButtonTarget() {
        guard let userInfoModel = viewModel?.setUserInfoModel else {
            print(" ERRO RESON userInfo model nil  -> UserViewController extension")
            return }
        viewModel?.tapOnTheUserSettingsVc(userInfoModel: userInfoModel)
    }
    
    @objc func firebaseExit() {
        viewModel?.userFirebaseExit(viewController: self)
    }
    
}

//MARK: - UserTableViewCellDelegate
extension UserViewController: UserTableViewCellDelegate {
    func userTableViewCellDelegate(userInfoModel: UserInfoModel) {
        viewModel?.setUserInfoModel = userInfoModel
    }
}


//MARK: - UITableViewDataSource
extension UserViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "userTableViewCellId", for: indexPath) as? UserTableViewCell {
            cell.delaget = self
            viewModel?.firebaseSet?.setObserveValue = { update in
                cell.update(update: update)
            }
            return cell
        }
        return UITableViewCell()
    }    
}

//MARK: - UITableViewDelegate
extension UserViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
}

