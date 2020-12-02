//
//  CreateResumeViewController + Extension.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

extension CreateResumeViewController {
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
        createResumeTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}

//MARK: - UITableViewDataSource
extension CreateResumeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return testArry.count
        return creatResumeViewModel?.kaeteqory?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "createResumeTableViewCellId", for: indexPath) as! CreateResumeTableViewCell
        //guard let item = creatResumeViewModel?.kateqoryArray?[indexPath.row] else { return UITableViewCell()}
       // cell.nameLabel.text = testArry[indexPath.row].kateqory
//        cell.nameLabel.text = item
        let item = creatResumeViewModel?.kaeteqory?[indexPath.row]
        cell.textLabel?.text = item?.email
        cell.accessoryType = .disclosureIndicator// tableVIewda > isaresi olsundeye
        return cell
    }
}

//MARK: - UITableViewDelegate
extension CreateResumeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        creatResumeViewModel?.tapOnThePeciselyVc()
        tableView.deselectRow(at: indexPath, animated: true)
        print("indexpath === \(indexPath)")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
}
