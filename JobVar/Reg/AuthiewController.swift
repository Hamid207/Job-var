//
//  RegViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class AuthiewController: UIViewController {
    
//    var nameTextfield = UITextField()
//    var emailTextfield = UITextField()
//    var pasTextfield = UITextField()
//
    private let nameLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30, weight: .medium)
       label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
       label.textAlignment = .left
       label.minimumScaleFactor = 0.2
       label.numberOfLines = 1
       label.sizeToFit()
       label.lineBreakMode = .byWordWrapping
       label.adjustsFontSizeToFitWidth = true
       label.text = "Qeydiyyat"
       label.translatesAutoresizingMaskIntoConstraints = false
       return label
   }()
    
    private let nameTextfield: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.placeholder = "Name"
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        textFiled.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return textFiled
    }()
    
    private let emailTextfield: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.placeholder = "Email"
        textFiled.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()

    private let pasTextfield: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.placeholder = "Password"
        textFiled.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    private let regButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        button.setTitle("Save", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
 
        setupItem()
        
    }
    
    func setupItem() {
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 50).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 15).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: 15).isActive = true
        
        
        view.addSubview(nameTextfield)
        nameTextfield.translatesAutoresizingMaskIntoConstraints = false
        nameTextfield.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 25).isActive = true
        nameTextfield.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 15).isActive = true
        nameTextfield.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -15).isActive = true
        nameTextfield.heightAnchor.constraint(equalToConstant: 40).isActive = true

        view.addSubview(emailTextfield)
        emailTextfield.translatesAutoresizingMaskIntoConstraints = false
        emailTextfield.topAnchor.constraint(equalTo: nameTextfield.bottomAnchor, constant: 10).isActive = true
        emailTextfield.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 15).isActive = true
        emailTextfield.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -15).isActive = true
        emailTextfield.heightAnchor.constraint(equalToConstant: 40).isActive = true


        view.addSubview(pasTextfield)
        pasTextfield.translatesAutoresizingMaskIntoConstraints = false
        pasTextfield.topAnchor.constraint(equalTo: emailTextfield.bottomAnchor, constant: 10).isActive = true
        pasTextfield.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 15).isActive = true
        pasTextfield.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -15).isActive = true
        pasTextfield.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(regButton)
        regButton.translatesAutoresizingMaskIntoConstraints = false
        regButton.topAnchor.constraint(equalTo: pasTextfield.bottomAnchor, constant: 10).isActive = true
        regButton.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 15).isActive = true
        regButton.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -15).isActive = true
        regButton.heightAnchor.constraint(equalToConstant: 40).isActive = true


    }
    

}
