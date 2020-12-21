//
//  CreatResumeTargetViewController + Extension.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//


import UIKit

extension CreatResumeTargetViewController {
  
    func setupNavigationBar() {
        if let topItem = navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: nil, action: nil)
            topItem.backBarButtonItem?.tintColor = UIColor(named: "MainColor")
        }
    }
    
    func setupIem() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Legv et ", style: .done, target: self, action: #selector(sil))
        navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "MainColor")
        
        //tableVIew
        createResumeTargetTableView.delegate = self
        createResumeTargetTableView.dataSource = self
        createResumeTargetTableView.separatorStyle = .singleLine
        createResumeTargetTableView.allowsSelection = false // tableViewnu basmaq olmur
        createResumeTargetTableView.register(TargetCreatResumeTableViewCell.self, forCellReuseIdentifier: "TargetCreatResumeTableViewCell")
        createResumeTargetTableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //createResumeTargetTableView.sectionFooterHeight = 10
        createResumeTargetTableView.sectionHeaderHeight = 10
        view.addSubview(createResumeTargetTableView)
        createResumeTargetTableView.translatesAutoresizingMaskIntoConstraints = false
        createResumeTargetTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        createResumeTargetTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        createResumeTargetTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        createResumeTargetTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
    }
    
    @objc func sil() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func showCityDetail() {
        viewModel?.showCityDetailVC()
    }
}

extension CreatResumeTargetViewController: AddResumeDelegate {
    func setResume(addResumeModel: AddResumeModel) {
        viewModel?.setResume(addResumeModel: addResumeModel)
    }
    
    
}


//MARK: - UITableViewDataSource
extension CreatResumeTargetViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TargetCreatResumeTableViewCell", for: indexPath) as? TargetCreatResumeTableViewCell {
            cell.delegate = self
            cell.nameLabel.text = "Proqramlasdirma"
            cell.cityButton.addTarget(self, action: #selector(showCityDetail), for: .touchDown)
            cell.saveButton.addTarget(self, action: #selector(sil), for: .touchDown)
//            if let cityName = viewModel?.cityName(tableView: createResumeTargetTableView){
//                cell.cityButton.titleLabel?.text = cityName
//            }
            return cell
        }
        return UITableViewCell()
    }
}

//MARK: - UITableViewDelegate
extension CreatResumeTargetViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1350
    }
}


