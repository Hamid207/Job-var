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
    
    //nameLabel
    let nameLabel: UILabel = {
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
        label.text = "Mobile developer"
        return label
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
        textFiled.placeholder = "Daxil et..."
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
        //button.setTitle("Seher secin", for: .normal)
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
    
    //minAgeButton
    private let minAgeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.setTitle("Min", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        return button
    }()
    
    //maxAgeButton
    private let maxAgeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.setTitle("Max", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        return button
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
        label.text = "Maaş"
        return label
    }()
    
    
    //minMaasButton
    private let minMaasButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.setTitle("Min", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        return button
    }()
    
    
    //maxMaasButton
    private let maxMaasButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.setTitle("Maks", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        return button
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
    private let educationButton: UIButton = {
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
    private let workExperienceButton: UIButton = {
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
        textFiled.placeholder = "Daxil et..."
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        itemSetup()
        resumeAddInt = userDefoltss.object(forKey: "reqem") as? Int ?? 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //setData
    @objc private func setData() {
        resumeAddInt += 1
        userDefoltss.set(resumeAddInt, forKey: "reqem")
        let addResume = AddResumeModel(resume: "resume Number - \(resumeAddInt)", cateqoryOneName: nameLabel.text!, cateqoryTwoName: secondNameLabel.text!, companyName: companyNameTextFiled.text!, salary: (minMaasButton.titleLabel?.text!)!, city: cityButton.titleLabel?.text ?? "BAKI ALINMADI(", age: "age", education: "education", workExperience: "workExperience", detailedInfo: infoTextView.text, requirements: requirementsTextView.text, email: emailTextFiled.text!, userId: "")
        delegate?.setResume(addResumeModel: addResume)
    }
    
    
    @objc func minMaasButtonTarget() {
        minMaasButton.setTitle("500 AZN", for: .normal)
    }
    
    @objc func maxButtonTarget() {
        maxMaasButton.setTitle("1500 AZN", for: .normal)
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        companyNameTextFiled.layer.cornerRadius = 5
        companyNameTextFiled.layer.borderWidth = 0.5
        companyNameTextFiled.layer.borderColor = UIColor.black.cgColor
        
        cityButton.layer.cornerRadius = 5
        cityButton.layer.borderWidth = 0.5
        cityButton.layer.borderColor = UIColor.black.cgColor
        
        minAgeButton.layer.cornerRadius = 5
        minAgeButton.layer.borderWidth = 0.5
        minAgeButton.layer.borderColor = UIColor.black.cgColor
        
        maxAgeButton.layer.cornerRadius = 5
        maxAgeButton.layer.borderWidth = 0.5
        maxAgeButton.layer.borderColor = UIColor.black.cgColor
        
        minMaasButton.layer.cornerRadius = 5
        minMaasButton.layer.borderWidth = 0.5
        minMaasButton.layer.borderColor = UIColor.black.cgColor
        
        maxMaasButton.layer.cornerRadius = 5
        maxMaasButton.layer.borderWidth = 0.5
        maxMaasButton.layer.borderColor = UIColor.black.cgColor
        
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
        
        //companyNameLabel
        contentView.addSubview(companyNameLabel)
        companyNameLabel.topAnchor.constraint(equalTo: secondNameLabel.bottomAnchor, constant: 30).isActive = true
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
        
        //ageLabel
        contentView.addSubview(ageLabel)
        ageLabel.topAnchor.constraint(equalTo: cityButton.bottomAnchor, constant: 20).isActive = true
        ageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //minAgeButton
        contentView.addSubview(minAgeButton)
        minAgeButton.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 10).isActive = true
        minAgeButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        minAgeButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2.5).isActive = true
        minAgeButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        //maxAgeButton
        contentView.addSubview(maxAgeButton)
        maxAgeButton.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 10).isActive = true
        maxAgeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        maxAgeButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2.5).isActive = true
        maxAgeButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        //maashLabel
        contentView.addSubview(maashLabel)
        maashLabel.topAnchor.constraint(equalTo: minAgeButton.bottomAnchor, constant: 20).isActive = true
        maashLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //minMaasButton
        contentView.addSubview(minMaasButton)
        minMaasButton.topAnchor.constraint(equalTo: maashLabel.bottomAnchor, constant: 10).isActive = true
        minMaasButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        minMaasButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2.5).isActive = true
        minMaasButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        minMaasButton.addTarget(self, action: #selector(minMaasButtonTarget), for: .touchDown)
        
        //maxButton
        contentView.addSubview(maxMaasButton)
        maxMaasButton.topAnchor.constraint(equalTo: maashLabel.bottomAnchor, constant: 10).isActive = true
        maxMaasButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        maxMaasButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2.5).isActive = true
        maxMaasButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        maxMaasButton.addTarget(self, action: #selector(maxButtonTarget), for: .touchDown)
        
        //euducationLabel
        contentView.addSubview(educationLabel)
        educationLabel.topAnchor.constraint(equalTo: maxMaasButton.bottomAnchor, constant: 20).isActive = true
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
