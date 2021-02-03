//
//  FilterMainVCTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 03.01.21.
//

import UIKit

class FilterMainVCTableViewCell: UITableViewCell {
    
    private let positionTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textFiled.textAlignment = .left
        textFiled.borderStyle = .roundedRect
        textFiled.placeholder = "Vezife"
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    private let companyTextFiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textFiled.textAlignment = .left
        textFiled.borderStyle = .roundedRect
        textFiled.placeholder = "Şirkət"
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    private let cityTextFiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textFiled.textAlignment = .left
        textFiled.borderStyle = .roundedRect
        textFiled.placeholder = "Şəhər"
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    private let salaryTextFiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textFiled.textAlignment = .left
        textFiled.borderStyle = .roundedRect
        textFiled.placeholder = "Maaş"
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    private let filterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(named: "MainColor")
        button.setTitle("Yerləşdirin", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        itemSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        positionTextField.layer.cornerRadius = 5
        positionTextField.layer.borderWidth = 0.5
        positionTextField.layer.borderColor = UIColor.black.cgColor
        
        companyTextFiled.layer.cornerRadius = 5
        companyTextFiled.layer.borderWidth = 0.5
        companyTextFiled.layer.borderColor = UIColor.black.cgColor
        
        cityTextFiled.layer.cornerRadius = 5
        cityTextFiled.layer.borderWidth = 0.5
        cityTextFiled.layer.borderColor = UIColor.black.cgColor
        
        salaryTextFiled.layer.cornerRadius = 5
        salaryTextFiled.layer.borderWidth = 0.5
        salaryTextFiled.layer.borderColor = UIColor.black.cgColor
        
        filterButton.layer.cornerRadius = 5
        
    }
    
    private func itemSetup() {
        positionTextField.delegate = self
        companyTextFiled.delegate = self
        cityTextFiled.delegate = self
        salaryTextFiled.delegate = self
        
        
        //positionTextField
        contentView.addSubview(positionTextField)
        positionTextField.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
        positionTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        positionTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        positionTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        //companyTextFiled
        contentView.addSubview(companyTextFiled)
        companyTextFiled.topAnchor.constraint(equalTo: positionTextField.bottomAnchor, constant: 10).isActive = true
        companyTextFiled.leadingAnchor.constraint(equalTo: positionTextField.leadingAnchor).isActive = true
        companyTextFiled.trailingAnchor.constraint(equalTo: positionTextField.trailingAnchor).isActive = true
        companyTextFiled.heightAnchor.constraint(equalTo: positionTextField.heightAnchor).isActive = true
        
        //cityTextFiled
        contentView.addSubview(cityTextFiled)
        cityTextFiled.topAnchor.constraint(equalTo: companyTextFiled.bottomAnchor, constant: 10).isActive = true
        cityTextFiled.leadingAnchor.constraint(equalTo: positionTextField.leadingAnchor).isActive = true
        cityTextFiled.trailingAnchor.constraint(equalTo: positionTextField.trailingAnchor).isActive = true
        cityTextFiled.heightAnchor.constraint(equalTo: positionTextField.heightAnchor).isActive = true
        
        //salaryTextFiled
        contentView.addSubview(salaryTextFiled)
        salaryTextFiled.topAnchor.constraint(equalTo: cityTextFiled.bottomAnchor, constant: 10).isActive = true
        salaryTextFiled.leadingAnchor.constraint(equalTo: positionTextField.leadingAnchor).isActive = true
        salaryTextFiled.trailingAnchor.constraint(equalTo: positionTextField.trailingAnchor).isActive = true
        salaryTextFiled.heightAnchor.constraint(equalTo: positionTextField.heightAnchor).isActive = true
        
        //filterButton
        contentView.addSubview(filterButton)
        filterButton.topAnchor.constraint(equalTo: salaryTextFiled.bottomAnchor, constant: 20).isActive = true
        filterButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        filterButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        filterButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
    }
}   

extension FilterMainVCTableViewCell: UITextFieldDelegate {
    //MARK: - ekrana basanta klavyatura gedir
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        positionTextField.resignFirstResponder()
        companyTextFiled.resignFirstResponder()
        cityTextFiled.resignFirstResponder()
        salaryTextFiled.resignFirstResponder()
        return true
    }
}
