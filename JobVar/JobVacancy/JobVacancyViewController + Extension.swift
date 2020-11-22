//
//  JobVacancyViewController + Extension.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

extension JobVacancyViewController {
    
    func setupNavigationBar() {
        if let topItem = navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: nil, action: nil)
            topItem.backBarButtonItem?.tintColor = UIColor(named: "MainColor")
        }
    }
    
    func setupITem() {
        //jobVacancyTableView
        jobVacancyTableView.delegate = self
        jobVacancyTableView.dataSource = self
        jobVacancyTableView.separatorStyle = .none
        jobVacancyTableView.register(JobVacancyTableViewCell.self, forCellReuseIdentifier: "jobVacancyTableViewCellId")
        jobVacancyTableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //jobVacancyTableView.sectionFooterHeight = 10
        jobVacancyTableView.sectionHeaderHeight = 10
        view.addSubview(jobVacancyTableView)
        jobVacancyTableView.translatesAutoresizingMaskIntoConstraints = false
        jobVacancyTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        jobVacancyTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        jobVacancyTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        jobVacancyTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        
        //refreshControl
        refresh.addTarget(self, action: #selector(handleRefresh), for: .valueChanged)
        jobVacancyTableView.addSubview(refresh)
    }
    
    //handleRefresh
    @objc func handleRefresh() {
        DispatchQueue.main.async {
            self.refresh.endRefreshing()
            self.jobVacancyTableView.reloadData()
        }
        
    }
    
}

//MARK: - UITableViewDataSource
extension JobVacancyViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tesarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "jobVacancyTableViewCellId", for: indexPath) as? JobVacancyTableViewCell {
            let item = tesarray[indexPath.row]
            cell.refresh(item)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}

//MARK: - UITableViewDelegate
extension JobVacancyViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let setArray = tesarray[indexPath.row]
        jobVacancyViewModel?.test(test: setArray)
    }
}
