//
//  ChoiceViewController + Extension.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import UIKit

extension ChoiceViewController {
    
    func setupItem() {
//        //tableView
//        tableView.delegate = self
//        tableView.dataSource = self
//        view.addSubview(tableView)
//        tableView.separatorStyle = .none
//        tableView.allowsSelection = false
//        tableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        tableView.register(ChoiceTableViewCell.self, forCellReuseIdentifier: "choiceTableViewCellId")
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
//        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
//        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        //logoImage
        view.addSubview(logoImage)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        logoImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        logoImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
        logoImage.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -250).isActive = true
        //logoImage.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, constant: 10).isActive = true
        logoImage.image = UIImage(named: "logo1")
        logoImage.backgroundColor = .red
        
        //logInButton
        view.addSubview(logInButton)
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        logInButton.setTitle("Log in", for: .normal)
        logInButton.setTitleColor(UIColor(named: "MainColor"), for: .normal)
        logInButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        logInButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        logInButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        logInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -120).isActive = true
        
        //signUp
        view.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.setTitle("Sign up", for: .normal)
        signUpButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        signUpButton.backgroundColor = UIColor(named: "MainColor")
        signUpButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        signUpButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signUpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
     
    }
    
}

//MARK: - UITableViewDataSource
extension ChoiceViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "choiceTableViewCellId", for: indexPath) as? ChoiceTableViewCell {
            return cell
        }
        return UITableViewCell()
    }
    
    
}

//MARK: - UITabBarDelegate
extension ChoiceViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }
}
