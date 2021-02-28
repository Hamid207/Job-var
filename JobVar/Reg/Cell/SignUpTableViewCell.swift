//
//  SignUpTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import UIKit

protocol LogInInfoDelegate: class {
    func logInInfo(email: String, pas: String)
}

class SignUpTableViewCell: UITableViewCell {
    weak var delegate: LogInInfoDelegate?
    
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
        label.text = "Daxil ol"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //emailLabel
     private let emailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = UIColor(named: "authTextFieldColor")
        label.textAlignment = .center
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Email ID"
        label.backgroundColor = UIColor(named: "TextColor")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //emailTextField
    private let emailTextFiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.textAlignment = .justified
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
    
    //passdTextField
    private let pasTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.textAlignment = .natural
        textFiled.textContentType = .none
        textFiled.autocapitalizationType = .none
       // textFiled.isSecureTextEntry = true  //bunu yerine delegate yazilib
        textFiled.returnKeyType = .done
        textFiled.borderStyle = .roundedRect
        textFiled.backgroundColor = UIColor(named: "TextColor")
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //signInButton
    private let signInButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(named: "MainColor")
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
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
        emailTextFiled.layer.borderWidth = 1
        emailTextFiled.layer.cornerRadius = 10
        emailTextFiled.layer.borderColor = UIColor(named: "authTextFieldColor")?.cgColor
//
        
        signInButton.layer.cornerRadius = 10
        
        pasTextField.layer.borderWidth = 1
        pasTextField.layer.cornerRadius = 10
        pasTextField.layer.borderColor = UIColor(named: "authTextFieldColor")?.cgColor
    }
    
    private func setupItem() {
        emailTextFiled.delegate = self
        pasTextField.delegate = self
        
        //mainLabel
        contentView.addSubview(mainLabel)
        mainLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 70).isActive = true
        mainLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        mainLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        
        //nameTextFiled
        contentView.addSubview(emailTextFiled)
        emailTextFiled.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 80).isActive = true
        emailTextFiled.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        emailTextFiled.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        emailTextFiled.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //emailLabel
        contentView.addSubview(emailLabel)
        emailLabel.topAnchor.constraint(equalTo: emailTextFiled.topAnchor, constant: -10).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        emailLabel.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        contentView.addSubview(pasTextField)
        pasTextField.topAnchor.constraint(equalTo: emailTextFiled.bottomAnchor, constant: 20).isActive = true
        pasTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        pasTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        pasTextField.heightAnchor.constraint(equalTo: emailTextFiled.heightAnchor).isActive = true
        
        //passwordLabel
        contentView.addSubview(passwordLabel)
        passwordLabel.topAnchor.constraint(equalTo: pasTextField.topAnchor, constant: -10).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        passwordLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true

        
        //signInButton
        contentView.addSubview(signInButton)
        signInButton.topAnchor.constraint(equalTo: pasTextField .bottomAnchor, constant: 60).isActive = true
        signInButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        signInButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signInButton.addTarget(self, action: #selector(signInButtonTarget), for: .touchDown)
    }
    
    @objc func signInButtonTarget() {
        let email = emailTextFiled.text!
        let pas = pasTextField.text!
        delegate?.logInInfo(email: email, pas: pas)
    }
}

extension SignUpTableViewCell: UITextFieldDelegate {
    //password stong olanda bunu ele textFiled.isSecureTextEntry = true nin yerine
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
           if (textField == self.pasTextField
               && !self.pasTextField.isSecureTextEntry) {
               self.pasTextField.isSecureTextEntry = true
           }
           return true
       }
    
    //MARK: - ekrana basanta klavyatura gedir
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.endEditing(true)
       }
    
    //MARK: - return basanda klavyatura gedir
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        pasTextField.resignFirstResponder()
        return true
    }
}

