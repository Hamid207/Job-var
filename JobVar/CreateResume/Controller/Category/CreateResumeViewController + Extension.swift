//
//  CreateResumeViewController + Extension.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

extension CreateResumeViewController {
    func setupNavigationBar() {
        if let topItem = navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: nil, action: nil)
            topItem.backBarButtonItem?.tintColor = UIColor(named: "MainColor")
        }
    }
    
    func setupIem() {
        //createResumeTableView.tableFooterView = UIView()
        createResumeTableView.delegate = self
        createResumeTableView.dataSource = self
        createResumeTableView.separatorStyle = .singleLine
        createResumeTableView.register(CreateResumeTableViewCell.self, forCellReuseIdentifier: "createResumeTableViewCellId")
        createResumeTableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //createResumeTableView.sectionFooterHeight = 10
        createResumeTableView.sectionHeaderHeight = 10
        view.addSubview(createResumeTableView)
        createResumeTableView.translatesAutoresizingMaskIntoConstraints = false
        createResumeTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        createResumeTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        createResumeTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        createResumeTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 35).isActive = true
    }
}

//MARK: - UITableViewDataSource
extension CreateResumeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return creatResumeViewModel?.resumeModel?.result.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "createResumeTableViewCellId", for: indexPath) as? CreateResumeTableViewCell {
            guard let item = creatResumeViewModel?.resumeModel?.result[indexPath.row].name else { return UITableViewCell() }
            cell.update(name: item)
            cell.accessoryType = .disclosureIndicator// tableVIewda > isaresi olsundeye
            return cell
        }
        return UITableViewCell()
    }
}

//MARK: - UITableViewDelegate
extension CreateResumeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = creatResumeViewModel?.resumeModel?.result[indexPath.row]
        creatResumeViewModel?.tapOnThePeciselyVc(resumeModel: item)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
}
