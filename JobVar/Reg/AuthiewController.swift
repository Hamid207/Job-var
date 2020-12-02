//
//  RegViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit
import Firebase

class AuthiewController: UIViewController {
    
    var signUp: Bool = true {
        willSet {
            if newValue {
                nameLabel.text = "Qeydiyyat"
                nameTextfield.isHidden = false
                regButton.setTitle("Girmək", for: .normal)
            }else {
                nameLabel.text = "Girish"
                nameTextfield.isHidden = true
                regButton.setTitle("Qeydiyyat", for: .normal)
            }
        }
    }
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.text = "Qeydiyyat"
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let nameTextfield: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.placeholder = "Name"
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        textFiled.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textFiled.textContentType = .name
        textFiled.returnKeyType = .next
        textFiled.autocapitalizationType = .words
        return textFiled
    }()
    
    private let emailTextfield: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.placeholder = "Email"
        textFiled.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textFiled.returnKeyType = .next
        textFiled.keyboardType = .emailAddress
        textFiled.textContentType = .emailAddress
        textFiled.autocapitalizationType = .none
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    private let pasTextfield: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.placeholder = "Password"
        textFiled.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textFiled.returnKeyType = .done
        textFiled.textContentType = .password
        textFiled.isSecureTextEntry = true
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    private let regButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        button.setTitle("Girmək", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        setupItem()
        
    }
    
    func setupItem() {
        nameTextfield.delegate = self
        emailTextfield.delegate = self
        pasTextfield.delegate = self
        
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
        regButton.addTarget(self, action: #selector(regButtonTarget), for: .touchDown)
    }
    
    @objc func regButtonTarget() {
        signUp = !signUp
        print(signUp)
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Erorr", message: "Melumati daxil edin", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}

extension AuthiewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let name = nameTextfield.text!
        let email = emailTextfield.text!
        let pas = pasTextfield.text!
        
        if (signUp) {
            if (!name.isEmpty && !email.isEmpty && !pas.isEmpty) {
                Auth.auth().createUser(withEmail: email, password: pas) { (result, error) in
                    if error == nil {
                        if let result = result {
                            print(result.user.uid)
                            let ref = Database.database().reference().child("usersss")
                            ref.child(result.user.uid).updateChildValues(["name" : name, "email" : email])
                        }
                    }
                }
            }else {
                showAlert()
            }
        }else {
            if (!email.isEmpty && !pas.isEmpty) {
                Auth.auth().signIn(withEmail: email, password: pas) { (result, error) in
                    if error == nil {
                        print("Signin \(result?.user.uid)")
                    }
                }
            }else {
                showAlert()
            }
        }
        return true
    }
}
