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
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveBarbutton))
        navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "MainColor")
        
//        var aaa = String()
//        viewModel?.firebaseSet?.setObserveValue = { name in
//            aaa = name["name"] as? String ?? "HamidNIl"
//           print("TEST == \(aaa)")
//        }
    }
    
    func itemSetup() {
        
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
        userTabeleView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 25).isActive = true
    }
    
    @objc func saveBarbutton() {
        viewModel?.popUser()
        DispatchQueue.main.async {
            self.userTabeleView.reloadData()
        }
//        let vc = UserSettingTableViewCell()
//        vc.delegate = self
//        vc.setData()
//        DispatchQueue.main.async {
//            self.userTabeleView.reloadData()
//        }
//       
//        if aaa == "" {
//            print("nil")
//        }else {
//            viewModel?.popUser()
//            DispatchQueue.main.async {
//                self.userTabeleView.reloadData()
//            }
//            print("QAQAQAQ")
//        }
//        var aaa = vc.nameTextFiled.text
//        aaa = "Hamid"
//        if viewModel?.modelName == "" {
//            let alert = UIAlertController(title: "nil", message: "nil", preferredStyle: .alert)
//            let action = UIAlertAction(title: "OK", style: .default) { (action) in
//
//            }
//
//            alert.addAction(action)
//            present(alert, animated: true, completion: nil)
//            print("1")
//  
//        }else if viewModel?.modelName != "" {
//            print("2")
//            DispatchQueue.main.async {
//                self.userTabeleView.reloadData()
//            }
//        }
//        print("hamidddd = \(viewModel?.modelName)")
    }
    
    @objc func saveEnabled() {
        
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
        viewModel?.modelName = userInfoModel.name
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
            cell.nameTextFiled.addTarget(self, action: #selector(saveEnabled), for: .editingChanged)
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

