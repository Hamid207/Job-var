//
//  LogInTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import UIKit

class LogInTableViewCell: UITableViewCell {
    
    let textFiledTextSize = 18

    //mainLabel
     private let mainLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Creat Account"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //nameLabel
     private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = UIColor(named: "TextColor")
        label.backgroundColor = .white
        label.textAlignment = .center
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Full Name"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //nameTextField
    private let nameTextFiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.textAlignment = .natural
        //textFiled.backgroundColor = .blue
        textFiled.borderStyle = .none
        textFiled.textContentType = .name
        textFiled.returnKeyType = .next
        textFiled.autocapitalizationType = .words
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    
    //emailLabel
     private let emailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = UIColor(named: "TextColor")
        label.backgroundColor = .white
        label.textAlignment = .center
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Email ID"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //emailTextField
    private let emailTextFiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.textAlignment = .natural
        //textFiled.backgroundColor = .blue
        textFiled.borderStyle = .none
        textFiled.keyboardType = .emailAddress
        textFiled.textContentType = .emailAddress
        textFiled.autocapitalizationType = .none
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //passwordLabel
     private let passwordLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = UIColor(named: "TextColor")
        label.backgroundColor = .white
        label.textAlignment = .center
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Password"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //passwordTextField
    private let passwordTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.textAlignment = .natural
        //textFiled.backgroundColor = .blue
        textFiled.borderStyle = .none
        textFiled.textContentType = .password
        textFiled.isSecureTextEntry = true
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //logInButton
    private let logInButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(named: "MainColor")
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupItem()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameTextFiled.layer.borderWidth = 0.7
        nameTextFiled.layer.cornerRadius = 10
        nameTextFiled.layer.borderColor = UIColor(named: "TextColor")?.cgColor
        
        emailTextFiled.layer.borderWidth = 0.7
        emailTextFiled.layer.cornerRadius = 10
        emailTextFiled.layer.borderColor = UIColor(named: "TextColor")?.cgColor
        
        passwordTextField.layer.borderWidth = 0.7
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.layer.borderColor = UIColor(named: "TextColor")?.cgColor
        
        logInButton.layer.cornerRadius = 10
        
    }
    
    func setupItem() {
        //mainLabel
        addSubview(mainLabel)
        mainLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 55).isActive = true
        mainLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        mainLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        
        //nameTextFiled
        addSubview(nameTextFiled)
        nameTextFiled.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 80).isActive = true
        nameTextFiled.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        nameTextFiled.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        nameTextFiled.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //nameLabel
        addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: nameTextFiled.topAnchor, constant: -10).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        //nameTextFiled
        addSubview(emailTextFiled)
        emailTextFiled.topAnchor.constraint(equalTo: nameTextFiled.bottomAnchor, constant: 20).isActive = true
        emailTextFiled.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        emailTextFiled.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        emailTextFiled.heightAnchor.constraint(equalTo: nameTextFiled.heightAnchor).isActive = true
        
        //emailLabel
        addSubview(emailLabel)
        emailLabel.topAnchor.constraint(equalTo: emailTextFiled.topAnchor, constant: -10).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        emailLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        //passwordTextField
        addSubview(passwordTextField)
        passwordTextField.topAnchor.constraint(equalTo: emailTextFiled.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: nameTextFiled.heightAnchor).isActive = true
        
        //passwordLabel
        addSubview(passwordLabel)
        passwordLabel.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -10).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        passwordLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        //logInButton
        addSubview(logInButton)
        logInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50).isActive = true
        logInButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        logInButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

}
