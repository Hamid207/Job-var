//
//  UserSettingViewController + Extension.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

extension UserSettingViewController {
    
    func setupNavigationBar() {
        if let topItem = navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: self, action: nil)
            topItem.backBarButtonItem?.tintColor = UIColor(named: "MainColor")
        }
    }
    
    func itemSetup() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveBarbutton))
        navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "MainColor")
        //MARK - USERTABLEVIEW
        userTabeleView.delegate = self
        userTabeleView.dataSource = self
        userTabeleView.separatorStyle = .none
        userTabeleView.allowsSelection = false // tableViewnu basmaq olmur
        userTabeleView.register(UserSettingTableViewCell.self, forCellReuseIdentifier: "iserSettingTableViewCellId")
        userTabeleView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //userTabeleView.sectionFooterHeight = 10
        userTabeleView.sectionHeaderHeight = 10
        view.addSubview(userTabeleView)
        userTabeleView.translatesAutoresizingMaskIntoConstraints = false
        userTabeleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        userTabeleView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        userTabeleView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        userTabeleView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    @objc func saveBarbutton() {
        viewModel?.popUser()
        DispatchQueue.main.async {
            self.userTabeleView.reloadData()
        }
    }
    
    @objc func showCityDetail() {
        let vc = UserAddCityViewController()
        vc.setCity = { [weak self] cityName in
            DispatchQueue.main.async {
                self?.viewModel?.cityName = cityName
                self?.userTabeleView.reloadData()
            }
        }
        navigationController?.present(vc, animated: true, completion: nil)
    }
    
    //        if viewModel?.userInfoModelName != ""{
    //
    //        }else  if viewModel?.userInfoModelName == "" {
    //            let alert = UIAlertController(title: "Adinizi daxil edin", message: nil, preferredStyle: .alert)
    //            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
    //
    //            alert.addAction(action)
    //            present(alert, animated: true, completion: nil)
    //        }
    //
}

//MARK: DELGATE
extension UserSettingViewController: SetDelegate {
    func setItem(userInfoModel: UserInfoModel) {
        // viewModel?.userInfoModelName = userInfoModel.name
        viewModel?.firebaseSet?.setUserInfo(userInfoModel: userInfoModel, withPath: "allUsers", child: "user")
    }
}

//MARK: - UITableViewDataSource
extension UserSettingViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "iserSettingTableViewCellId", for: indexPath) as? UserSettingTableViewCell {
            cell.delegate = self
            cell.setData()
            cell.textrFirledTarget()
            cell.cityButton.addTarget(self, action: #selector(showCityDetail), for: .touchDown)
            if let model = viewModel?.userInfoModel {
                cell.updateData(userInfoModel: model, cityName: viewModel?.cityName ?? model.city)
            }
            
            return cell
        }
        return UITableViewCell()
    }
}

//MARK: - UITableViewDelegate
extension UserSettingViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 750
    }
}

