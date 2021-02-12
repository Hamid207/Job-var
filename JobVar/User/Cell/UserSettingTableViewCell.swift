//
//  UserSettingTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit
protocol SetDelegate: class {
    func setItem(userInfoModel: UserInfoModel)
}

class UserSettingTableViewCell: UITableViewCell {
    var buttonTarget = false
    weak var delegate: SetDelegate?
    
    //userImage
    private let userImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.image = UIImage(named: "user1")
        image.heightAnchor.constraint(equalToConstant: 100).isActive = true
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.layer.cornerRadius = 50
        return image
    }()
    
    //nameLabel
     private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Ad"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //nameTextField
    let nameTextFiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //namelineVIew
    private let namelineVIew: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //------------------------lastName
    
    //lastNameLabel
     private let lastNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Soyad"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //lastNameTextField
    private let lastNameTextFiled: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.placeholder = "Daxil et..."
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //lastNamelineVIew
    private let lastNamelineVIew: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //--------------------userCity
    
    
    //userCityLabel
     private let userCityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Şəhər"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //cityTextField
//    private let cityTextFiled: UITextField = {
//        let textFiled = UITextField()
//        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
//        textFiled.placeholder = "Daxil et..."
//        textFiled.translatesAutoresizingMaskIntoConstraints = false
//        return textFiled
//    }()
    
    //cityButton
    let cityButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    
    //citylineVIew
    private let citylineVIew: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //--------------------date
    
    //dateLabel
     private let dateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Dogum tarixi"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //dateTextField
    private let dateTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textFiled.textAlignment = .center
        textFiled.borderStyle = .roundedRect
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
//    //dateButton
//    private let dateButton: UIButton = {
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle("03.26.1994", for: .normal)
//        button.setTitleColor(.black, for: .normal)
//        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//
//        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
//        return button
//    }()
    
    //datelineVIew
    private let dateLineVIew: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //--------------------email
    
    //emailLabel
     private let emailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Email"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //emailTextField
    private let emailTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.placeholder = "Daxil et..."
        textFiled.textAlignment = .natural
        //textFiled.backgroundColor = .blue
        textFiled.borderStyle = .none
        textFiled.keyboardType = .emailAddress
        textFiled.textContentType = .emailAddress
        textFiled.autocapitalizationType = .none
        textFiled.returnKeyType = .done
        textFiled.autocorrectionType = .no
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
//    //emailButton
//    private let emailButton: UIButton = {
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        //button.setTitle("Seher secin", for: .normal)
//        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
//        return button
//    }()
//
    //emailLineVIew
    private let emailLineVIew: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //--------------------number
    
    //numberLabel
     private let numberLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Telefon"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //numberTextField
    private let numberTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textFiled.placeholder = "Daxil et..."
        textFiled.keyboardType = .numberPad
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    //numberLineVIew
    private let numberLineVIew: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //cinsSegmentControl
//    private let cinsSegmentControl: UISegmentedControl = {
//        let segmentArray = ["Kishi", "Qadin"]
//        var segment = UISegmentedControl()
//        segment = UISegmentedControl(items: segmentArray)
//        segment.translatesAutoresizingMaskIntoConstraints = false
//        return segment
//    }()
    
    lazy private var datePickerView = UIDatePicker()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupItem()
        doneToolbar()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        cityButton.layer.borderWidth = 0.5
        cityButton.layer.cornerRadius = 5
        cityButton.layer.borderColor = UIColor.black.cgColor
        
        dateTextField.layer.borderWidth = 0.5
        dateTextField.layer.cornerRadius = 5
        dateTextField.layer.borderColor = UIColor.black.cgColor
        
//        dateButton.layer.borderWidth = 0.5
//        dateButton.layer.cornerRadius = 5
//        dateButton.layer.borderColor = UIColor.black.cgColor
        
//        emailButton.layer.borderWidth = 0.5
//        emailButton.layer.cornerRadius = 5
//        emailButton.layer.borderColor = UIColor.black.cgColor
    }
    
    func updateData(userInfoModel: UserInfoModel, cityName: String) {
        nameTextFiled.text = userInfoModel.name
        lastNameTextFiled.text = userInfoModel.lastName
        emailTextField.text = userInfoModel.email
        numberTextField.text = userInfoModel.number
        cityButton.setTitle(cityName, for: .normal)
        if dateTextField.text == "" {
            dateTextField.text = userInfoModel.dateOfBirth
        }
    }
    
    func setData() {
//        guard let name = nameTextFiled.text, let lastName = lastNameTextFiled.text, let city = cityButton.titleLabel?.text, let dateOfBirth = dateButton.titleLabel?.text, let email = emailTextField.text, let number = numberTextField.text  else { return}
        guard let name = nameTextFiled.text else { return  }
       // let lastName = lastNameTextFiled.text
        let userInfoModel = UserInfoModel(name: name, lastName: lastNameTextFiled.text, userId: "", city: (cityButton.titleLabel?.text) ?? "", image: "nil", dateOfBirth: dateTextField.text, number: numberTextField.text, info: "userInfo", email: emailTextField.text ?? "email nil")
        delegate?.setItem(userInfoModel: userInfoModel)
        print("Setdata")
    }
    
    @objc func textrFirledTarget() {
        if nameTextFiled.text == "" {
            namelineVIew.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        }else if nameTextFiled.text != "" {
            namelineVIew.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        }
        
        if lastNameTextFiled.text == "" {
            lastNamelineVIew.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        }else if lastNameTextFiled.text != "" {
            lastNamelineVIew.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        }
        
        if emailTextField.text == "" {
            emailLineVIew.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        }else if emailTextField.text != "" {
            emailLineVIew.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        }
        
        if numberTextField.text == "" {
            numberLineVIew.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        }else if numberTextField.text != "" {
            numberLineVIew.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        }
    }
    
    private func doneToolbar() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneAction))
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolbar.setItems([flexSpace, doneButton], animated: true)
        
        dateTextField.inputAccessoryView = toolbar
    }
    
    @objc func doneAction() {
        getFormatter()
        self.endEditing(true)
    }
    
    //datePicker format ve dil
    func getFormatter() {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        formatter.locale = Locale.init(identifier: "az_Latn_AZ")
        dateTextField.text = formatter.string(from: datePickerView.date)
    }
    
    private func setupItem() {
        nameTextFiled.delegate = self
        lastNameTextFiled.delegate = self
        emailTextField.delegate = self
        numberTextField.delegate = self
        dateTextField.delegate = self
        
        dateTextField.inputView = datePickerView
        datePickerView.datePickerMode = .date
        let loc = Locale.init(identifier: "az_Latn_AZ")
        datePickerView.locale = loc
       
        if #available(iOS 13.4, *) {
            datePickerView.preferredDatePickerStyle = .wheels
        }
        
        //datePivker limit time
        var components = DateComponents()
         components.year = -65
         let minDate = Calendar.current.date(byAdding: components, to: Date())
         components.year = -18
         let maxDate = Calendar.current.date(byAdding: components, to: Date())
         datePickerView.minimumDate = minDate
         datePickerView.maximumDate = maxDate
        
        
        //------------- image
        //userImage
        contentView.addSubview(userImage)
        userImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        userImage.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        //nameLabel
        contentView.addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 30).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        
        //nameTextFiled
        contentView.addSubview(nameTextFiled)
        nameTextFiled.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: -20).isActive = true
        nameTextFiled.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        nameTextFiled.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        nameTextFiled.heightAnchor.constraint(equalToConstant: 80).isActive = true
        nameTextFiled.addTarget(self, action: #selector(textrFirledTarget), for: .editingChanged)
        
        //nameLineView
        contentView.addSubview(namelineVIew)
        namelineVIew.topAnchor.constraint(equalTo: nameTextFiled.bottomAnchor, constant: -15).isActive = true
        namelineVIew.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        namelineVIew.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        namelineVIew.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        //-------------lastName
        //lastNameLabel
        contentView.addSubview(lastNameLabel)
        lastNameLabel.topAnchor.constraint(equalTo: namelineVIew.bottomAnchor, constant: 20).isActive = true
        lastNameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        lastNameLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        
        //lastNameTextFiled
        contentView.addSubview(lastNameTextFiled)
        lastNameTextFiled.topAnchor.constraint(equalTo: lastNameLabel.bottomAnchor, constant: -20).isActive = true
        lastNameTextFiled.leadingAnchor.constraint(equalTo: lastNameLabel.leadingAnchor).isActive = true
        lastNameTextFiled.trailingAnchor.constraint(equalTo: lastNameLabel.trailingAnchor).isActive = true
        lastNameTextFiled.heightAnchor.constraint(equalToConstant: 80).isActive = true
        lastNameTextFiled.addTarget(self, action: #selector(textrFirledTarget), for: .editingChanged)
        
        //lastNamelineView
        contentView.addSubview(lastNamelineVIew)
        lastNamelineVIew.topAnchor.constraint(equalTo: lastNameTextFiled.bottomAnchor, constant: -15).isActive = true
        lastNamelineVIew.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        lastNamelineVIew.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        lastNamelineVIew.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        //-------------cins
//        //cinsSegmentControl
//        contentView.addSubview(cinsSegmentControl)
//        cinsSegmentControl.topAnchor.constraint(equalTo: lastNamelineVIew.bottomAnchor, constant: 20).isActive = true
//        cinsSegmentControl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
//        cinsSegmentControl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
//
        
        //userCityLabel
        contentView.addSubview(userCityLabel)
        userCityLabel.topAnchor.constraint(equalTo: lastNamelineVIew.bottomAnchor, constant: 20).isActive = true
        userCityLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        userCityLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        
        //cityButton
        contentView.addSubview(cityButton)
        cityButton.topAnchor.constraint(equalTo: userCityLabel.bottomAnchor, constant: 10).isActive = true
        cityButton.leadingAnchor.constraint(equalTo: userCityLabel.leadingAnchor).isActive = true
        cityButton.trailingAnchor.constraint(equalTo: userCityLabel.trailingAnchor).isActive = true
        cityButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
//        addSubview(cityTextFiled)
//        cityTextFiled.topAnchor.constraint(equalTo: userCityLabel.bottomAnchor, constant: -20).isActive = true
//        cityTextFiled.leadingAnchor.constraint(equalTo: userCityLabel.leadingAnchor).isActive = true
//        cityTextFiled.trailingAnchor.constraint(equalTo: userCityLabel.trailingAnchor).isActive = true
//        cityTextFiled.heightAnchor.constraint(equalToConstant: 80).isActive = true
//
        //citylineVIew
        contentView.addSubview(citylineVIew)
        citylineVIew.topAnchor.constraint(equalTo: cityButton.bottomAnchor, constant: 15).isActive = true
        citylineVIew.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        citylineVIew.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        citylineVIew.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        //dateLabel
        contentView.addSubview(dateLabel)
        dateLabel.topAnchor.constraint(equalTo: citylineVIew.bottomAnchor, constant: 20).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        dateLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        
//        //dateButton
//        contentView.addSubview(dateButton)
//        dateButton.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 10).isActive = true
//        dateButton.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor).isActive = true
//        dateButton.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor).isActive = true
//        dateButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
          
        
        //dateTextField
        addSubview(dateTextField)
        dateTextField.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 10).isActive = true
        dateTextField.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor).isActive = true
        dateTextField.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor).isActive = true
        dateTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true

        //dateLineVIew
        contentView.addSubview(dateLineVIew)
        dateLineVIew.topAnchor.constraint(equalTo: dateTextField.bottomAnchor, constant: 15).isActive = true
        dateLineVIew.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        dateLineVIew.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        dateLineVIew.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        //dateLabel
        contentView.addSubview(emailLabel)
        emailLabel.topAnchor.constraint(equalTo: dateLineVIew.bottomAnchor, constant: 20).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        
        //emailButton
//        addSubview(emailButton)
//        emailButton.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10).isActive = true
//        emailButton.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor).isActive = true
//        emailButton.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor).isActive = true
//        emailButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        
        //emailTextField
        contentView.addSubview(emailTextField)
        emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: -20).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 80).isActive = true
        emailTextField.addTarget(self, action: #selector(textrFirledTarget), for: .editingChanged)
        
        //emailLineVIew
        contentView.addSubview(emailLineVIew)
        emailLineVIew.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: -15).isActive = true
        emailLineVIew.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        emailLineVIew.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        emailLineVIew.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        //-------------number
        
        //numberLabel
        contentView.addSubview(numberLabel)
        numberLabel.topAnchor.constraint(equalTo: emailLineVIew.bottomAnchor, constant: 20).isActive = true
        numberLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        numberLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        
        //numberTextField
        contentView.addSubview(numberTextField)
        numberTextField.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: -20).isActive = true
        numberTextField.leadingAnchor.constraint(equalTo: numberLabel.leadingAnchor).isActive = true
        numberTextField.trailingAnchor.constraint(equalTo: numberLabel.trailingAnchor).isActive = true
        numberTextField.heightAnchor.constraint(equalToConstant: 80).isActive = true
        numberTextField.addTarget(self, action: #selector(textrFirledTarget), for: .editingChanged)
        
        //numberLineVIew
        contentView.addSubview(numberLineVIew)
        numberLineVIew.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: -15).isActive = true
        numberLineVIew.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        numberLineVIew.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        numberLineVIew.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
    }
}

extension UserSettingTableViewCell: UITextFieldDelegate {
    //MARK: - ekrana basanta klavyatura gedir
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextFiled.resignFirstResponder()
        lastNameTextFiled.resignFirstResponder()
        emailTextField.resignFirstResponder()
        numberTextField.resignFirstResponder()
        return true
    }
}


