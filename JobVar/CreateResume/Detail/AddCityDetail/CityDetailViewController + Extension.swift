////
////  CityDetailViewController + Extension.swift
////  JobVar
////
////  Created by Hamid Manafov on 17.12.20.
////
//
//import UIKit
//
//extension CityDetailViewController {
//    func setupNavigationBar() {
//        if let topItem = navigationController?.navigationBar.topItem {
//            topItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: nil, action: nil)
//            topItem.backBarButtonItem?.tintColor = UIColor(named: "MainColor")
//        }
//    }
//    
//    func itemSetup() {
//        //tableVIew
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.separatorStyle = .singleLine
////        tableView.register(CityDetailTableViewCell.self, forCellReuseIdentifier: "cityDetailTableViewCellId")
//        tableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        //createResumeTargetTableView.sectionFooterHeight = 10
//        tableView.sectionHeaderHeight = 10
//        view.addSubview(tableView)
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
//        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
//        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
//    }
//}
//
////MARK: - UITableViewDataSource
//extension CityDetailViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return viewModel?.cityNameArray?.count ?? 1
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        if let cell = tableView.dequeueReusableCell(withIdentifier: "cityDetailTableViewCellId", for: indexPath) as? CityDetailTableViewCell{
//            if let item = viewModel?.cityNameArray?[indexPath.row] {
//                cell.update(item)
//            }
////            cell.cityName.text = "hamid"
//            return cell
//        }
//        return UITableViewCell()
//    }
//    
//    
//}
//
////MARK: - UITableViewDelegate
//extension CityDetailViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let item = viewModel?.cityNameArray?[indexPath.row]
//        print("item == \(item)")
//        name = item
////        viewModel?.cityName(name: item!)
//        setName?("HAMIDDDDDD SETTT NAMEEE TESTTT ==\(item)")
//        viewModel?.popToVC()
////        navigationController?.popViewController(animated: true)
//        
//        //viewModel?.popToVC()
//    }
//    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 65
//    }
//}
//
//
