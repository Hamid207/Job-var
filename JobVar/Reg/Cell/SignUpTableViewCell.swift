//
//  SignUpTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import UIKit
import Firebase

class SignUpTableViewCell: UITableViewCell {
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
        label.text = "Sign un"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //emailLabel
     private let emailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = UIColor(named: "authTextFieldColor")
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
        textFiled.returnKeyType = .done
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //passwordLabel
     private let passwordLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = UIColor(named: "authTextFieldColor")
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
    
    //passdTextField
    private let pasTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        //textFiled.textAlignment = .natural
        //textFiled.backgroundColor = .blue
        textFiled.borderStyle = .none
        textFiled.autocapitalizationType = .none
        textFiled.returnKeyType = .done
        //textFiled.textContentType = .password
       // textFiled.textContentType = .password // bulari secende strong password verir duzelt
        //textFiled.isSecureTextEntry = true
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //signInButton
    private let signInButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(named: "MainColor")
        button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        button.setTitle("Sign up", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupItem()
        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        emailTextFiled.layer.borderWidth = 1
        emailTextFiled.layer.cornerRadius = 10
        emailTextFiled.layer.borderColor = UIColor(named: "authTextFieldColor")?.cgColor
        
//        passwordTextField.layer.borderWidth = 0.7
//        passwordTextField.layer.cornerRadius = 10
//        passwordTextField.layer.borderColor = UIColor(named: "TextColor")?.cgColor
        
        signInButton.layer.cornerRadius = 10
        
        pasTextField.layer.borderWidth = 1
        pasTextField.layer.cornerRadius = 10
        pasTextField.layer.borderColor = UIColor(named: "authTextFieldColor")?.cgColor
    }
    
    private func setupItem() {
        emailTextFiled.delegate = self
        pasTextField.delegate = self
        
        //mainLabel
        addSubview(mainLabel)
        mainLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 70).isActive = true
        mainLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        mainLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        
        //nameTextFiled
        addSubview(emailTextFiled)
        emailTextFiled.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 80).isActive = true
        emailTextFiled.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        emailTextFiled.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        emailTextFiled.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //emailLabel
        addSubview(emailLabel)
        emailLabel.topAnchor.constraint(equalTo: emailTextFiled.topAnchor, constant: -10).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        emailLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        addSubview(pasTextField)
        pasTextField.topAnchor.constraint(equalTo: emailTextFiled.bottomAnchor, constant: 20).isActive = true
        pasTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        pasTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        pasTextField.heightAnchor.constraint(equalTo: emailTextFiled.heightAnchor).isActive = true
        
        //passwordLabel
        addSubview(passwordLabel)
        passwordLabel.topAnchor.constraint(equalTo: pasTextField.topAnchor, constant: -10).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 35).isActive = true
        passwordLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        //logInButton
        addSubview(signInButton)
        signInButton.topAnchor.constraint(equalTo: pasTextField.bottomAnchor, constant: 100).isActive = true
        signInButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        signInButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }

}

extension SignUpTableViewCell: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        let email = emailTextFiled.text!
        let pas = pasTextField.text!
        if (!email.isEmpty && !pas.isEmpty) {
            Auth.auth().signIn(withEmail: email, password: pas) { (result, error) in
                if error == nil {
                    print("Signin \(result?.user.uid)")
                }
            }
        }else {
            print("Melumati daxet SignUpTableViewCell") //burda alert olamlidi
        }
        return true
    }
}
