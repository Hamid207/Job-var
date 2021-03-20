//
//  FilterMainVCTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 03.01.21.
//

import UIKit

protocol FilterDelegate: class {
    func setFilterInfo(filterModel: FilterModel)
}

class FilterMainVCTableViewCell: UITableViewCell {
    weak var delegate: FilterDelegate?
    lazy private var cityPickerView = UIPickerView()
    lazy private var salaryPickerView = UIPickerView()
    let cityArray = ["Baki", "Gence", "Sumqayit"]
    let salaryArray  = ["", "400", "500", "600", "700", "800", "900", "1000", "1100", "1200", "1300", "1400", "1500", "1600", "1700", "1800", "1900", "2000", "2100", "2200", "2300", "2400", "2500", "2600", "2700", "2800", "2900", "3000", "3100", "3200", "3400", "3500", "3600", "3700", "3800", "3900", "4000", "4100", "4500", "4600", "4700", "4800", "4900", "5000"]
    
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
        textFiled.text = "Baki"
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
        textFiled.clearButtonMode = .whileEditing
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    let filterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(named: "MainColor")
        button.setTitle("Axtar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        itemSetup()
        doneButton()
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
    
    func update(update : [String : Any]) {
        positionTextField.text = update["position"] as? String
        companyTextFiled.text = update["companyName"] as? String
        cityTextFiled.text = update["city"] as? String
        salaryTextFiled.text = update["salary"] as? String
    }
    
    @objc private func setData() {
        let filterModel = FilterModel(position: positionTextField.text ?? "", companyName: companyTextFiled.text ?? "", city: cityTextFiled.text ?? "", salary: salaryTextFiled.text ?? "", info: "")
        delegate?.setFilterInfo(filterModel: filterModel)
    }
    
    private func doneButton() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(donePressed))
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolBar.setItems([flexSpace, doneButton], animated: true)
        
        cityTextFiled.inputAccessoryView = toolBar
        salaryTextFiled.inputAccessoryView = toolBar
    }
    
    @objc private func donePressed() {
        self.endEditing(true)
    }
    
    private func itemSetup() {
        positionTextField.delegate = self
        companyTextFiled.delegate = self
        cityTextFiled.delegate = self
        salaryTextFiled.delegate = self
        
        cityPickerView.delegate = self
        cityPickerView.dataSource = self
        salaryPickerView.delegate = self
        salaryPickerView.dataSource = self
        
        cityTextFiled.inputView = cityPickerView
        salaryTextFiled.inputView = salaryPickerView
        
        cityPickerView.tag = 1
        salaryPickerView.tag = 2
        
        
        
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
        filterButton.addTarget(self, action: #selector(setData), for: .touchDown)
        
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

extension FilterMainVCTableViewCell: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1:
            return cityArray.count
        case 2:
            return salaryArray.count
        default:
            return 1
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return cityArray[row]
        case 2:
            return salaryArray[row]
        default:
            return ""
        }
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 1:
            cityTextFiled.text = cityArray[row]
        case 2:
            salaryTextFiled.text = salaryArray[row]
        default:
            break
        }
    }
}
