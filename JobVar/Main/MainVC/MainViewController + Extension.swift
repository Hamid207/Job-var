//
//  MainViewController + Extension.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

extension MainViewController {
    
    func makeActivityIndicatorView() -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.color = UIColor(named: "MainColor")
        activityIndicator.hidesWhenStopped = true
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(activityIndicator)
        activityIndicator.topAnchor.constraint(equalToSystemSpacingBelow: mainCollectionView.bottomAnchor, multiplier: 5).isActive = true
        activityIndicator.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        return activityIndicator
    }
    
    func nav() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "filter"), style: .done, target: self, action: #selector(filterVC))
        navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "MainColor")
    }
    
    func setupView() {
        //MARK: - MAINCOLLECTIONVIEW
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        mainCollectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: "mainCollectionViewCellId")
        mainCollectionView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        mainCollectionView.showsHorizontalScrollIndicator = false
        mainCollectionView.showsVerticalScrollIndicator = false
        view.addSubview(mainCollectionView)
        mainCollectionView.translatesAutoresizingMaskIntoConstraints = false
        mainCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        mainCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        mainCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        mainCollectionView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        
        //MARK - MAINTABLEVIEW
        mainTableView.delegate = self
        mainTableView.dataSource = self
        mainTableView.separatorStyle = .none
//      mainTableView.rowHeight = UITableView.automaticDimension
//      mainTableView.estimatedRowHeight = 100
        mainTableView.showsVerticalScrollIndicator = false
        mainTableView.register(MainTableViewViewCell.self, forCellReuseIdentifier: mainViewModel!.mainTableViewCellId)
        //mainTableView.register(SecondMainTableViewCell.self, forCellReuseIdentifier: mainViewModel!.secondTableVIewCellId)
        mainTableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //mainTableView.sectionFooterHeight = 10
        //mainTableView.sectionHeaderHeight = 15
        view.addSubview(mainTableView)
        mainTableView.translatesAutoresizingMaskIntoConstraints = false
        mainTableView.topAnchor.constraint(equalTo: mainCollectionView.bottomAnchor).isActive = true
        mainTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        mainTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        mainTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    
    func configureRefreshControl () {
        mainTableView.refreshControl = refreshControl
        refreshControl.addTarget(self, action: #selector(handleRefreshControl), for: .valueChanged)
    }
    
    @objc func handleRefreshControl() {
        DispatchQueue.main.async { [weak self] in
            self?.mainTableView.reloadData()
        }
        self.refreshControl.endRefreshing()
    }
    
    @objc func filterVC() {
        mainViewModel?.showFilterVC()
    }
    
    @objc func search() {
        
    }
}



//MARK: - UITableViewDataSource
extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainViewModel?.firebaseSet?.addResumeArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: mainViewModel!.mainTableViewCellId, for: indexPath) as? MainTableViewViewCell {
            let item = mainViewModel?.firebaseSet?.addResumeArray?[indexPath.row]
            if tableView.isOpaque {
                actitvityIndicator.stopAnimating()
                cell.refresh(item!)
            }
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Sizə uyğun elanlar"
    }
    
    //tableVIew section desing
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        view.tintColor = UIColor.white
        view.heightAnchor.constraint(equalToConstant: 40).isActive = true
        let header = view as! UITableViewHeaderFooterView
        //header.textLabel?.textColor =  UIColor(named: "MainColor")
        header.textLabel?.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        header.textLabel?.textColor =  UIColor.black
    }
}

//MARK: - UITableViewDelegate
extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let model = mainViewModel?.firebaseSet?.addResumeArray?[indexPath.row] else { return  }
        mainViewModel?.tapOnTheComment(addreseumeModel: model)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
}

//MARK: - ---------------------------------- UICollectionView

//MARK: - UICollectionViewDataSource
extension MainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mainViewModel?.collectionVIewARRayTest?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainCollectionViewCellId", for: indexPath) as? MainCollectionViewCell {
            guard let item = mainViewModel?.collectionVIewARRayTest?[indexPath.row] else { return UICollectionViewCell()}
            cell.update(name: item)
            return cell
        }
        return UICollectionViewCell()
    }
}

//MARK: - UICollectionViewDelegate
extension MainViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            mainViewModel?.tapOnTheCreateResume()
        case 1:
            mainViewModel?.tapOnTheJobVacancy()
//        case 2:
//            mainViewModel?.tapOnTheIsAxtaranlar() //heleki hazir deyil 
        default:
            break
        }
    }
}

//MARK: - UICollectionViewDelegateFlowLayout
extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width * 0.4, height: view.frame.height * 0.4 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    
    
}

