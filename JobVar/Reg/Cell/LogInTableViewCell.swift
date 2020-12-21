//
//  LogInTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import UIKit
import Firebase

protocol RegInfoDelegate {
    func regInfo(name: String, email: String, password: String)
}

class LogInTableViewCell: UITableViewCell {
    var delegate: RegInfoDelegate?
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
        label.textColor = UIColor(named: "authTextFieldColor")
        label.backgroundColor = UIColor(named: "TextColor")
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
        textFiled.textAlignment = .left
        textFiled.contentVerticalAlignment = .center
        textFiled.textContentType = .name
        textFiled.returnKeyType = .next
        textFiled.autocapitalizationType = .words
        textFiled.autocorrectionType = .no
        textFiled.borderStyle = .roundedRect
        textFiled.backgroundColor = UIColor(named: "TextColor")
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    
    //emailLabel
     private let emailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = UIColor(named: "authTextFieldColor")
        label.backgroundColor = UIColor(named: "TextColor")
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
        textFiled.keyboardType = .emailAddress
        textFiled.textContentType = .emailAddress
        textFiled.autocapitalizationType = .none
        textFiled.returnKeyType = .next
        textFiled.autocorrectionType = .no
        textFiled.borderStyle = .roundedRect
        textFiled.backgroundColor = UIColor(named: "TextColor")
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //passwordLabel
     private let passwordLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = UIColor(named: "authTextFieldColor")
        label.backgroundColor = UIColor(named: "TextColor")
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
        textFiled.textContentType = .password
        textFiled.autocapitalizationType = .none
        textFiled.isSecureTextEntry = true
        textFiled.returnKeyType = .done
        textFiled.borderStyle = .roundedRect
        textFiled.backgroundColor = UIColor(named: "TextColor")
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //logInButton
    private let logInButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(named: "MainColor")
        button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        button.setTitle("Daxil ol", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor(named: "TextColor")
        setupItem()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameTextFiled.layer.borderWidth = 0.7
        nameTextFiled.layer.cornerRadius = 10
        nameTextFiled.layer.borderColor = UIColor(named: "authTextFieldColor")?.cgColor
        
        emailTextFiled.layer.borderWidth = 0.7
        emailTextFiled.layer.cornerRadius = 10
        emailTextFiled.layer.borderColor = UIColor(named: "authTextFieldColor")?.cgColor
        
        passwordTextField.layer.borderWidth = 0.7
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.layer.borderColor = UIColor(named: "authTextFieldColor")?.cgColor
        
        logInButton.layer.cornerRadius = 10
    }
    
    func setupItem() {
        nameTextFiled.delegate = self
        emailTextFiled.delegate = self
        passwordTextField.delegate = self
        
        //mainLabel
        contentView.addSubview(mainLabel)
        mainLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 55).isActive = true
        mainLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        mainLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        
        //nameTextFiled
        contentView.addSubview(nameTextFiled)
        nameTextFiled.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 80).isActive = true
        nameTextFiled.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        nameTextFiled.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        nameTextFiled.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //nameLabel
        contentView.addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: nameTextFiled.topAnchor, constant: -10).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        //nameTextFiled
        contentView.addSubview(emailTextFiled)
        emailTextFiled.topAnchor.constraint(equalTo: nameTextFiled.bottomAnchor, constant: 20).isActive = true
        emailTextFiled.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        emailTextFiled.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        emailTextFiled.heightAnchor.constraint(equalTo: nameTextFiled.heightAnchor).isActive = true
        
        //emailLabel
        contentView.addSubview(emailLabel)
        emailLabel.topAnchor.constraint(equalTo: emailTextFiled.topAnchor, constant: -10).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        emailLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        //passwordTextField
        contentView.addSubview(passwordTextField)
        passwordTextField.topAnchor.constraint(equalTo: emailTextFiled.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: nameTextFiled.heightAnchor).isActive = true
        
        //passwordLabel
        contentView.addSubview(passwordLabel)
        passwordLabel.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -10).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        passwordLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        //logInButton
        contentView.addSubview(logInButton)
        logInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50).isActive = true
        logInButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        logInButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        logInButton.addTarget(self, action: #selector(logInButtonTarget), for: .touchDown)
    }
    
    
    @objc func logInButtonTarget(closure: @escaping () ->()) {
        let name = nameTextFiled.text!
        let email = emailTextFiled.text!
        let pas = passwordTextField.text!
        delegate?.regInfo(name: name, email: email, password: pas)
    }
}

extension LogInTableViewCell: UITextFieldDelegate {
    //MARK: - ekrana basanta klavyatura gedir
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.endEditing(true)
       }
    
    //MARK: - return basanda klavyatura gedir
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passwordTextField.resignFirstResponder()
        return true
    }
    
}


