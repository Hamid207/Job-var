//
//  TargetCreatResumeTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//


import UIKit
protocol AddResumeDelegate: class {
    func setResume(addResumeModel: AddResumeModel)
}

class TargetCreatResumeTableViewCell: UITableViewCell {
        
    weak var delegate: AddResumeDelegate?
    var resumeAddInt = 0
    var userDefoltss = UserDefaults.standard
    
    var minSalary = ["300", "400", "500", "600", "700", "800", "900", "1000", "1100", "1200", "1300", "1400", "1500", "1600", "1700", "1800", "1900", "2000", "2100", "2200", "2300", "2400", "2500", "2600", "2700", "2800", "2900", "3000", "3100", "3200", "3400", "3500", "3600", "3700", "3800", "3900"]
    var maxSalary = ["400", "500", "600", "700", "800", "900", "1000", "1100", "1200", "1300", "1400", "1500", "1600", "1700", "1800", "1900", "2000", "2100", "2200", "2300", "2400", "2500", "2600", "2700", "2800", "2900", "3000", "3100", "3200", "3400", "3500", "3600", "3700", "3800", "3900", "4000", "4100", "4500", "4600"]
    var age = ["18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48",
               "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64"]
    var maxAge = ["19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48",
                  "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64"]

    
    //nameLabel
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //secondNameLabel
    private let secondNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //positionLabel
    private let positionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Vəzifə"
        return label
    }()
    
    //positionTextfiled
    let positionTextfiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textFiled.textAlignment = .left
        textFiled.borderStyle = .roundedRect
//        textFiled.placeholder = "Daxil et..."
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    
    //companyNameLabel
    private let companyNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Şirkətin adı"
        return label
    }()
    
    //companyNameTextFiled
    let companyNameTextFiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textFiled.textAlignment = .left
        textFiled.borderStyle = .roundedRect
//        textFiled.placeholder = "Daxil et..."
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //cityLabel
    private let cityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Şəhər"
        return label
    }()
    
    //cityButton
     let cityButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    
    //ageLabel
    private let ageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Yaş"
        return label
    }()
    
    //minAgeTextfiled
    let minAgeTextfiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textFiled.textAlignment = .left
        textFiled.borderStyle = .roundedRect
        textFiled.text = "18"
        textFiled.textAlignment = .center
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //maxAgeTextfiled
    let maxAgeTextfiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textFiled.textAlignment = .left
        textFiled.borderStyle = .roundedRect
        textFiled.placeholder = "Max"
        textFiled.textAlignment = .center
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //maashLabel
    private let maashLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Maaş AZN"
        return label
    }()
    
    //minMaasTextfiled
    let minMaasTextfiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textFiled.textAlignment = .left
        textFiled.borderStyle = .roundedRect
        textFiled.text = "300"
        textFiled.textAlignment = .center
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    
    //maxMaasTextfiled
    let maxMaasTextfiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textFiled.textAlignment = .left
        textFiled.borderStyle = .roundedRect
        textFiled.textAlignment = .center
        textFiled.placeholder = "Max"
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //euducationLabel
    let educationLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Təhsil"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //educationButton
     let educationButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        //button.setTitle("Seher secin", for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    
    //workExperienceLabel
    private let workExperienceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "İş təcrübəsi"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //workExperienceButton
     let workExperienceButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        //button.setTitle("Seher secin", for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    
    //infoTexViewLabel
    private let infoTexViewLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "İş barədə məlumat"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //infoTextView
    private let infoTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textView.tintColor = .black
        textView.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        return textView
    }()
    
    //requirementsLabel
    private let requirementsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Namizədə tələblər"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //requirementsTextVIew
    private let requirementsTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textView.tintColor = .black
        textView.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        return textView
    }()
    
    //emailLabel
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "E-mail"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //emailTextFiled
    private let emailTextFiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textFiled.textAlignment = .left
        textFiled.borderStyle = .roundedRect
        textFiled.keyboardType = .emailAddress
        textFiled.textContentType = .emailAddress
        textFiled.autocapitalizationType = .none
        textFiled.returnKeyType = .next
        textFiled.autocorrectionType = .no
        textFiled.borderStyle = .roundedRect
//        textFiled.placeholder = "Daxil et..."
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //saveButton
    let saveButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(named: "MainColor")
        button.setTitle("Yerləşdirin", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    
    var minAgePickerView = UIPickerView()
    var maxAgePickerView = UIPickerView()
    var minSalaryPickerView = UIPickerView()
    var maxSalaryPickerView = UIPickerView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        itemSetup()
        resumeAddInt = userDefoltss.object(forKey: "reqem") as? Int ?? 0
        doneButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //setData
    @objc private func setData() {
        resumeAddInt += 1
        userDefoltss.set(resumeAddInt, forKey: "reqem")
        var age = String()
        var salary = String()
        guard let minAge = minAgeTextfiled.text, let maxAge = maxAgeTextfiled.text, let minSalary = minMaasTextfiled.text, let maxSalary = maxMaasTextfiled.text else { return }
        if maxAgeTextfiled.text == "" {
            age = "\(minAge)"
        }else {
            age = "\(minAge) - \(maxAge)"
        }
        
        if maxMaasTextfiled.text == "" {
            salary = "\(minSalary) AZN"
        }else {
            salary = "\(minSalary) - \(maxSalary) AZN"
        }
        
        let addResume = AddResumeModel(resume: "\(resumeAddInt)", cateqoryOneName: nameLabel.text!, cateqoryTwoName: secondNameLabel.text!, position: positionTextfiled.text!, companyName: companyNameTextFiled.text!, salary: salary, city: "\(String(describing: cityButton.titleLabel?.text))." , age: age, education: educationButton.titleLabel?.text ?? "", workExperience: workExperienceButton.titleLabel?.text ?? "", detailedInfo: infoTextView.text, requirements: requirementsTextView.text, email: emailTextFiled.text!, userId: "")
        delegate?.setResume(addResumeModel: addResume)
    }
    
    
    func refresh(cityName: String, education: String, workExperiene: String, resumeModel: Kateqory?, target: String?) {
        nameLabel.text = resumeModel?.name
        secondNameLabel.text = target
        educationButton.setTitle(education, for: .normal)
        cityButton.setTitle(cityName, for: .normal)
        workExperienceButton.setTitle(workExperiene, for: .normal)
    }
    
    func doneButton() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(donePressed))
        toolBar.setItems([doneButton], animated: true)
        
        minAgeTextfiled.inputAccessoryView = toolBar
        maxAgeTextfiled.inputAccessoryView = toolBar
        minMaasTextfiled.inputAccessoryView = toolBar
        maxMaasTextfiled.inputAccessoryView = toolBar
    }
    
    @objc func donePressed() {
        self.endEditing(true)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
                
        positionTextfiled.layer.cornerRadius = 5
        positionTextfiled.layer.borderWidth = 0.5
        positionTextfiled.layer.borderColor = UIColor.black.cgColor
        
        companyNameTextFiled.layer.cornerRadius = 5
        companyNameTextFiled.layer.borderWidth = 0.5
        companyNameTextFiled.layer.borderColor = UIColor.black.cgColor
        
        cityButton.layer.cornerRadius = 5
        cityButton.layer.borderWidth = 0.5
        cityButton.layer.borderColor = UIColor.black.cgColor
        
        minAgeTextfiled.layer.cornerRadius = 5
        minAgeTextfiled.layer.borderWidth = 0.5
        minAgeTextfiled.layer.borderColor = UIColor.black.cgColor
        
        maxAgeTextfiled.layer.cornerRadius = 5
        maxAgeTextfiled.layer.borderWidth = 0.5
        maxAgeTextfiled.layer.borderColor = UIColor.black.cgColor
        
        minMaasTextfiled.layer.cornerRadius = 5
        minMaasTextfiled.layer.borderWidth = 0.5
        minMaasTextfiled.layer.borderColor = UIColor.black.cgColor
        
        maxMaasTextfiled.layer.cornerRadius = 5
        maxMaasTextfiled.layer.borderWidth = 0.5
        maxMaasTextfiled.layer.borderColor = UIColor.black.cgColor
        
        educationButton.layer.cornerRadius = 5
        educationButton.layer.borderWidth = 0.5
        educationButton.layer.borderColor = UIColor.black.cgColor
        
        workExperienceButton.layer.cornerRadius = 5
        workExperienceButton.layer.borderWidth = 0.5
        workExperienceButton.layer.borderColor = UIColor.black.cgColor
        
        infoTextView.layer.cornerRadius = 5
        infoTextView.layer.borderWidth = 0.5
        infoTextView.layer.borderColor = UIColor.black.cgColor
        
        emailTextFiled.layer.cornerRadius = 5
        emailTextFiled.layer.borderWidth = 0.5
        emailTextFiled.layer.borderColor = UIColor.black.cgColor
        
        requirementsTextView.layer.cornerRadius = 5
        requirementsTextView.layer.borderWidth = 0.5
        requirementsTextView.layer.borderColor = UIColor.black.cgColor
        
        saveButton.layer.cornerRadius = 5
    }
    
    
    //MARK: - ItemSetup
    private func itemSetup() {
        positionTextfiled.delegate = self
        companyNameTextFiled.delegate = self
        emailTextFiled.delegate = self
        minAgeTextfiled.delegate = self
        maxAgeTextfiled.delegate = self
        minMaasTextfiled.delegate = self
        maxMaasTextfiled.delegate = self
        
        minAgePickerView.delegate = self
        minAgePickerView.dataSource = self
        maxAgePickerView.delegate = self
        maxAgePickerView.dataSource = self
    
        minSalaryPickerView.delegate = self
        minSalaryPickerView.dataSource = self
        maxSalaryPickerView.delegate = self
        maxSalaryPickerView.dataSource = self
        
        minAgePickerView.tag = 1
        maxAgePickerView.tag = 2
        minSalaryPickerView.tag = 3
        maxSalaryPickerView.tag = 4
        
        minAgeTextfiled.inputView = minAgePickerView
        maxAgeTextfiled.inputView = maxAgePickerView
        minMaasTextfiled.inputView = minSalaryPickerView
        maxMaasTextfiled.inputView = maxSalaryPickerView
        
        //namelabel
        contentView.addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //secondNameLabel
        contentView.addSubview(secondNameLabel)
        secondNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 7).isActive = true
        secondNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        secondNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //positionLabel
        contentView.addSubview(positionLabel)
        positionLabel.topAnchor.constraint(equalTo: secondNameLabel.bottomAnchor, constant: 25).isActive = true
        positionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        positionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //positionTextfiled
        contentView.addSubview(positionTextfiled)
        positionTextfiled.topAnchor.constraint(equalTo: positionLabel.bottomAnchor, constant: 10).isActive = true
        positionTextfiled.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        positionTextfiled.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        positionTextfiled.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        //companyNameLabel
        contentView.addSubview(companyNameLabel)
        companyNameLabel.topAnchor.constraint(equalTo: positionTextfiled.bottomAnchor, constant: 20).isActive = true
        companyNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //companyNameTextFiled
        contentView.addSubview(companyNameTextFiled)
        companyNameTextFiled.topAnchor.constraint(equalTo: companyNameLabel.bottomAnchor, constant: 10).isActive = true
        companyNameTextFiled.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        companyNameTextFiled.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        companyNameTextFiled.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        //cityLabel
        contentView.addSubview(cityLabel)
        cityLabel.topAnchor.constraint(equalTo: companyNameTextFiled.bottomAnchor, constant: 20).isActive = true
        cityLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //cityButton
        contentView.addSubview(cityButton)
        cityButton.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10).isActive = true
        cityButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        cityButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        cityButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
//        cityButton.addTarget(self, action: #selector(cityButtonTarget), for: .touchDown)
        
        //ageLabel
        contentView.addSubview(ageLabel)
        ageLabel.topAnchor.constraint(equalTo: cityButton.bottomAnchor, constant: 20).isActive = true
        ageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //minAgeTextfiled
        contentView.addSubview(minAgeTextfiled)
        minAgeTextfiled.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 10).isActive = true
        minAgeTextfiled.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        minAgeTextfiled.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2.5).isActive = true
        minAgeTextfiled.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        //maxAgeButton
        contentView.addSubview(maxAgeTextfiled)
        maxAgeTextfiled.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 10).isActive = true
        maxAgeTextfiled.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        maxAgeTextfiled.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2.5).isActive = true
        maxAgeTextfiled.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        //maashLabel
        contentView.addSubview(maashLabel)
        maashLabel.topAnchor.constraint(equalTo: minAgeTextfiled.bottomAnchor, constant: 20).isActive = true
        maashLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //minMaasButton
        contentView.addSubview(minMaasTextfiled)
        minMaasTextfiled.topAnchor.constraint(equalTo: maashLabel.bottomAnchor, constant: 10).isActive = true
        minMaasTextfiled.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        minMaasTextfiled.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2.5).isActive = true
        minMaasTextfiled.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        //maxMaasTextfiled
        contentView.addSubview(maxMaasTextfiled)
        maxMaasTextfiled.topAnchor.constraint(equalTo: maashLabel.bottomAnchor, constant: 10).isActive = true
        maxMaasTextfiled.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        maxMaasTextfiled.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2.5).isActive = true
        maxMaasTextfiled.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        //euducationLabel
        contentView.addSubview(educationLabel)
        educationLabel.topAnchor.constraint(equalTo: maxMaasTextfiled.bottomAnchor, constant: 20).isActive = true
        educationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //educationButton
        contentView.addSubview(educationButton)
        educationButton.topAnchor.constraint(equalTo: educationLabel.bottomAnchor, constant: 10).isActive = true
        educationButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        educationButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        educationButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        //workExperienceLabel
        contentView.addSubview(workExperienceLabel)
        workExperienceLabel.topAnchor.constraint(equalTo: educationButton.bottomAnchor, constant: 20).isActive = true
        workExperienceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        workExperienceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //workExperienceButton
        contentView.addSubview(workExperienceButton)
        workExperienceButton.topAnchor.constraint(equalTo: workExperienceLabel.bottomAnchor, constant: 10).isActive = true
        workExperienceButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        workExperienceButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        workExperienceButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        //infotexViewLabel
        contentView.addSubview(infoTexViewLabel)
        infoTexViewLabel.topAnchor.constraint(equalTo: workExperienceButton.bottomAnchor, constant: 20).isActive = true
        infoTexViewLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //infoTextView
        contentView.addSubview(infoTextView)
        infoTextView.topAnchor.constraint(equalTo: infoTexViewLabel.bottomAnchor, constant: 10).isActive = true
        infoTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        infoTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        infoTextView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //requirementsLabel
        contentView.addSubview(requirementsLabel)
        requirementsLabel.topAnchor.constraint(equalTo: infoTextView.bottomAnchor, constant: 20).isActive = true
        requirementsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //requirementsTextVIew
        contentView.addSubview(requirementsTextView)
        requirementsTextView.topAnchor.constraint(equalTo: requirementsLabel.bottomAnchor, constant: 10).isActive = true
        requirementsTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        requirementsTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        requirementsTextView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //emailLabel
        contentView.addSubview(emailLabel)
        emailLabel.topAnchor.constraint(equalTo: requirementsTextView.bottomAnchor, constant: 20).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //emailTextFiled
        contentView.addSubview(emailTextFiled)
        emailTextFiled.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10).isActive = true
        emailTextFiled.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        emailTextFiled.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        emailTextFiled.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        
        //saveButton
        contentView.addSubview(saveButton)
        saveButton.topAnchor.constraint(equalTo: emailTextFiled.bottomAnchor, constant: 25).isActive = true
        saveButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        saveButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        saveButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        saveButton.addTarget(self, action: #selector(setData), for: .touchDown)
    }
}

extension TargetCreatResumeTableViewCell: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        positionTextfiled.resignFirstResponder()
        companyNameTextFiled.resignFirstResponder()
        emailTextFiled.resignFirstResponder()
        return true
    }
}

extension TargetCreatResumeTableViewCell: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1:
            return age.count
        case 2:
            return maxAge.count
        case 3:
            return minSalary.count
        case 4:
            return maxSalary.count
        default:
           return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return age[row]
        case 2:
            return maxAge[row]
        case 3:
            return minSalary[row]
        case 4:
            return maxSalary[row]
        default:
           return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 1:
            minAgeTextfiled.text = age[row]
        case 2:
            maxAgeTextfiled.text = maxAge[row]
        case 3:
            minMaasTextfiled.text = minSalary[row]
        case 4:
            maxMaasTextfiled.text = maxSalary[row]
        default:
            break
        }
    }
    
}
