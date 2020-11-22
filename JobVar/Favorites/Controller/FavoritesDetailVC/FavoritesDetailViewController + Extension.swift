//
//  FavoritesDetailViewController + Extension.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

extension FavoritesDetailViewController {
    
    func setupNavigationBar() {
        if let topItem = navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: nil, action: nil)
            topItem.backBarButtonItem?.tintColor = UIColor(named: "MainColor")
        }
    }
    
    func setupIem() {
        //tableView
        tableView.tableFooterView = UIView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.register(FavoritesDetailTableViewCell.self, forCellReuseIdentifier: "favoritesDetailTableViewCellId")
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
    
}

//MARK: - UITableViewDataSource
extension FavoritesDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "favoritesDetailTableViewCellId", for: indexPath) as? FavoritesDetailTableViewCell {
            if let item = viewModel?.testArray {
                cell.refResh(item)
                return cell
            }
        }
        return UITableViewCell()
    }
    
    
}

//MARK: - UITableViewDelegate
extension FavoritesDetailViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}
