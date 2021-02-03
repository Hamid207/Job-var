//
//  CreatResumeTargetViewController + Extension.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//


import UIKit

extension CreatResumeTargetViewController {
  
    func setupNavigationBar() {
//        if let topItem = navigationController?.navigationBar.topItem {
//            topItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: self, action: #selector(back))
//            topItem.backBarButtonItem?.tintColor = UIColor(named: "MainColor")
//        }
    }
    
    func setupIem() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Legv et ", style: .done, target: self, action: #selector(legvEtBarNutton))
        navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "MainColor")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "back"), style: .done, target: self, action: #selector(back))
        navigationItem.leftBarButtonItem?.tintColor = UIColor(named: "MainColor")
        
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
//        createResumeTargetTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        createResumeTargetTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 35).isActive = true
    }
    
    @objc func back() {
        let alert = UIAlertController(title: nil, message: "Diqqet butin qeyd eddikleriniz legv olunacaq.", preferredStyle: .alert)
        let actionDelete = UIAlertAction(title: "Legv et", style: .destructive) { [weak self] (actionDelete) in
            self?.navigationController?.popViewController(animated: true)
        }
        let action = UIAlertAction(title: "Davam et", style: .default, handler: nil)
        
        alert.addAction(action)
        alert.addAction(actionDelete)
        present(alert, animated: true, completion: nil)
    }
    
    @objc func legvEtBarNutton() {
        let alert = UIAlertController(title: nil, message: "Diqqet butin qeyd eddikleriniz legv olunacaq.", preferredStyle: .alert)
        let actionDelete = UIAlertAction(title: "Legv et", style: .destructive) { [weak self] (actionDelete) in
            self?.navigationController?.popToRootViewController(animated: true)
        }
        let action = UIAlertAction(title: "Davam et", style: .default, handler: nil)
        
        alert.addAction(action)
        alert.addAction(actionDelete)
        present(alert, animated: true, completion: nil)
    }
    
    @objc func saveButton() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    @objc func showCityDetail() {
        let vc = CityViewController() //bulari duzelt
        vc.setName = { [weak self] name in
            DispatchQueue.main.async {
                self?.viewModel?.cityName = name
                self?.createResumeTargetTableView.reloadData()
            }
        }
        navigationController?.present(vc, animated: true, completion: nil)
//        viewModel?.showCityDetailVC() sora bax buna
    }
    
    @objc func showWorkExperienceDetail() {
        let vc = WorkExperienceViewController()
        vc.setWorkExperienc = { [weak self] workExperienc in
            DispatchQueue.main.async {
                self?.viewModel?.workExperiene = workExperienc
                self?.createResumeTargetTableView.reloadData()
            }
        }
        navigationController?.present(vc, animated: true, completion: nil)
//        viewModel?.showCityDetailVC() sora bax buna
    }

    @objc func showEducationDetail() {
        let vc = EuducationViewController()
        vc.setEducation = { [weak self] education in
            DispatchQueue.main.async {
                self?.viewModel?.educationName = education
                self?.createResumeTargetTableView.reloadData()
            }
        }
        navigationController?.present(vc, animated: true, completion: nil)
//        viewModel?.showCityDetailVC() sora bax buna
    }
    
//    @objc func maxSalaryButtonTarget() {
//        let vc = SalaryViewController()
//        vc.modalPresentationStyle = .overFullScreen
//        vc.modalTransitionStyle = .crossDissolve
//        navigationController?.present(vc, animated: true, completion: nil)
//    }
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
            cell.cityButton.addTarget(self, action: #selector(showCityDetail), for: .touchDown)
            cell.educationButton.addTarget(self, action: #selector(showEducationDetail), for: .touchDown)
            cell.workExperienceButton.addTarget(self, action: #selector(showWorkExperienceDetail), for: .touchDown)
            cell.saveButton.addTarget(self, action: #selector(saveButton), for: .touchDown)
            cell.refresh(cityName: viewModel?.cityName ?? "", education: viewModel?.educationName ?? "", workExperiene: viewModel?.workExperiene ?? "", resumeModel: viewModel?.resumeModel, target: viewModel?.target)

            return cell
        }
        return UITableViewCell()
    }
}

//MARK: - UITableViewDelegate
extension CreatResumeTargetViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1450
    }
}


