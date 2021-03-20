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
        
    func makeActivityIndicatorView() -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.color = UIColor(named: "MainColor")
        activityIndicator.hidesWhenStopped = true
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(activityIndicator)
        activityIndicator.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.bottomAnchor, multiplier: 5).isActive = true
        activityIndicator.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        return activityIndicator
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
    }
    
    //handleRefresh
    @objc func handleRefresh() {
        DispatchQueue.main.async {
            self.jobVacancyTableView.reloadData()
        }
    }
    
    func refreshCOntroll() {
        refreshControl.addTarget(self, action: #selector(handleRefreshControl(sender:)), for: .valueChanged)
    }
    
    @objc func handleRefreshControl(sender: UIRefreshControl) {
        jobVacancyViewModel?.firebaseSet?.observeAddResumeModel(tableView: jobVacancyTableView)
        jobVacancyTableView.reloadData()
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            sender.endRefreshing()
        }
        print("hamisdadasdasdasdiajidjasiodjqio")
    }
    
 
}

//MARK: - UITableViewDataSource
extension JobVacancyViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobVacancyViewModel?.firebaseSet?.addAllResumeArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "jobVacancyTableViewCellId", for: indexPath) as? JobVacancyTableViewCell {
            guard let item = jobVacancyViewModel?.firebaseSet?.addAllResumeArray?[indexPath.row] else { return UITableViewCell() }
            if tableView.isOpaque {
                actitvityIndicator.stopAnimating()
            }
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
        let setArray = jobVacancyViewModel?.firebaseSet?.addAllResumeArray?[indexPath.row]
        jobVacancyViewModel?.test(detailResume: setArray!)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
//    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        print(scrollView.contentOffset.y > scrollView.contentSize.height - scrollView.frame.size.height)
//    }
}
