//
//  MainFilterViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 03.01.21.
//

import UIKit

class MainFilterViewController: UIViewController {
    
    var viewModel: MainFilterViewModelProtocol?
    let tableView = UITableView(frame: .zero, style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupNavigationBar() 
        setupItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        DispatchQueue.main.async { [weak self] in
//            self?.viewModel?.firebaseSet?.filterVC()
//            self?.viewModel?.firebaseSet?.test2(tableView: self!.tableView)

            self?.viewModel?.firebaseSet?.userFilterObserve()
        }
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(true)
//        viewModel?.firebaseSet?.removeAllObserverr()
//    }
    
    func setupNavigationBar() {
        if let topItem = navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: nil, action: nil)
            topItem.backBarButtonItem?.tintColor = UIColor(named: "MainColor")
        }
    }
    
    func setupItem() {
        //tableView
        tableView.tableFooterView = UIView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .singleLine
        tableView.allowsSelection = false
        tableView.register(FilterMainVCTableViewCell.self, forCellReuseIdentifier: "filterMainVCTableViewCellId")
        tableView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //createResumeTableView.sectionFooterHeight = 10
        tableView.sectionHeaderHeight = 10
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    @objc func popVCButton() {
        viewModel?.popView()
    }
    
}
extension MainFilterViewController: FilterDelegate {
    func setFilterInfo(filterModel: FilterModel) {
        viewModel?.firebaseSet(filterModel: filterModel)
        viewModel?.position = filterModel.position
    }
}

extension MainFilterViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "filterMainVCTableViewCellId", for: indexPath) as? FilterMainVCTableViewCell {
            cell.delegate = self
            cell.filterButton.addTarget(self, action: #selector(popVCButton), for: .touchDown)
            viewModel?.firebaseSet?.setFilterObserveValue = { update in
                cell.update(update: update)
            }
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280
    }
}



