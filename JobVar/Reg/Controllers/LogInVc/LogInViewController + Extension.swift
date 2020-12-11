//
//  LogInViewController + Extension.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import UIKit

extension LogInViewController {
    
    func setupNavigationBar() {
        if let topItem = navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: self, action: nil)
            topItem.backBarButtonItem?.tintColor = UIColor(named: "MainColor")
        }
    }
    
    func setupItem() {
        //tableView
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.backgroundColor = UIColor(named: "TextColor")
        tableView.register(LogInTableViewCell.self, forCellReuseIdentifier: "logInTableViewCellId")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}

//MARK: - DELEGATE
extension LogInViewController: RegInfoDelegate {
    func regInfo(name: String, email: String, password: String) {
        viewModel?.firebaseSet?.reg(name: name, email: email, pas: password)
    }
}

//MARK: - UITableViewDataSource
extension LogInViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "logInTableViewCellId", for: indexPath) as? LogInTableViewCell {
            cell.delegate = self
            return cell
        }
        return UITableViewCell()
    }
}

extension LogInViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }
}




