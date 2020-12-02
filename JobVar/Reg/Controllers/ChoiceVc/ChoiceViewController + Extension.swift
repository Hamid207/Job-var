//
//  ChoiceViewController + Extension.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import UIKit

extension ChoiceViewController {
    
    func setupItem() {
        //logoImage
        view.addSubview(logoImage)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.image = UIImage(named: "logo1")
        logoImage.contentMode = .scaleAspectFill
        logoImage.clipsToBounds = true
        logoImage.backgroundColor = .red
        logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        logoImage.centerXAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        //logInButton
        view.addSubview(logInButton)
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        logInButton.setTitle("Qeydiyyat", for: .normal)
        //logInButton.backgroundColor = .black
        //logInButton.setTitleColor(UIColor(named: "MainColor"), for: .normal)
        logInButton.setTitleColor(UIColor.black, for: .normal)

        logInButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        logInButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        logInButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        logInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -120).isActive = true
        logInButton.addTarget(self, action: #selector(logInButtonTarget), for: .touchDown)
        
        //signUp
        view.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.setTitle("Daxil ol", for: .normal)
        signUpButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        signUpButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        signUpButton.backgroundColor = UIColor(named: "MainColor")
        signUpButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        signUpButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signUpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
        signUpButton.addTarget(self, action: #selector(signUpButtonTarget), for: .touchDown)
    }
    
    @objc func logInButtonTarget() {
        viewModel?.tapOnTheLoigInVc()
    }
    
    @objc func signUpButtonTarget() {
        viewModel?.tapOnTheSignUpVc()
    }
    
}
