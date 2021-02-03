//
//  DetailTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    //nameLabel
     private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
//        label.textColor = UIColor(named: "MainColor")
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //cateqoryOneName
     private let cateqoryOneName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //cityLabel
    private let cityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.sizeToFit()
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
       }()
    
    //euducationLabel
    private let educationLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Təhsil"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //workExperienceLabel
    private let workExperienceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //ageLabel
    private let ageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //priceLabel
     private let priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.sizeToFit()
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //cilientUiview
    private var cilientView: UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //cilientNameLabel
    private let cilientNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 21, weight: .medium)
        label.textColor = UIColor(named: "MainColor")
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.minimumScaleFactor = 0.4
        label.numberOfLines = 2
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //jobInformation
    private let jobInformation: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        label.minimumScaleFactor = 0.2
        label.textAlignment = .left
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
        label.text = "İş barədə məlumat"
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //infoTextLabel
    private let infoTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 19, weight: .light)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.minimumScaleFactor = 0.2
        label.textAlignment = .left
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //requirementsNameLabel
    private let requirementsNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        label.minimumScaleFactor = 0.2
        label.textAlignment = .left
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
        label.text = "Namizədə tələblər"
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //requirementsLabel
    private let requirementsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 19, weight: .light)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.minimumScaleFactor = 0.2
        label.textAlignment = .left
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //odemeLabel
    private let odemeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //lineView1
    private let lineView1: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //lineView2
    private let lineView2: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //lineView3
    private let lineView3: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupItem()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        cilientView.layer.cornerRadius = 5
        cilientView.layer.borderWidth = 2
        cilientView.layer.borderColor = UIColor(named: "MainColor")?.cgColor
    }
    
    
    func detailRefresh(_ model: AddResumeModel) {
        nameLabel.text = model.position
        cateqoryOneName.text = model.cateqoryOneName
        requirementsLabel.text = model.requirements
        priceLabel.text = "Maaş:  \(model.salary!) AZN"
        infoTextLabel.text = model.detailedInfo
        cityLabel.text = model.city
        cilientNameLabel.text = model.companyName
        educationLabel.text = "Təhsil:  \(model.education)"
        workExperienceLabel.text = "İş təcrübəsi:  \(model.workExperience)"
        ageLabel.text = "Yaş:  \(model.age)"
        
//        switch model.odeme {
//        case .offline:
//            return odemeLabel.text = "Odeme Offline"
//        case .online:
//            return odemeLabel.text = "Odeme Online"
//        }
    }
    
    //MARK: - setupItem
    private func setupItem() {
        //nameLabel
        addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //cityLabel
        addSubview(cityLabel)
        cityLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10).isActive = true
        cityLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //educationLabel
        contentView.addSubview(educationLabel)
        educationLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10).isActive = true
        educationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        educationLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //workExperienceLabel
        contentView.addSubview(workExperienceLabel)
        workExperienceLabel.topAnchor.constraint(equalTo: educationLabel.bottomAnchor, constant: 10).isActive = true
        workExperienceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        workExperienceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //ageLabel
        contentView.addSubview(ageLabel)
        ageLabel.topAnchor.constraint(equalTo: workExperienceLabel.bottomAnchor, constant: 10).isActive = true
        ageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        ageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //priceLabel
        contentView.addSubview(priceLabel)
        priceLabel.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 10).isActive = true
        priceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
//
//        //odemeLabel
//        addSubview(odemeLabel)
//        odemeLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10).isActive = true
//        odemeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 120).isActive = true
//
        //cilientView
        contentView.addSubview(cilientView)
        cilientView.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 20).isActive = true
        cilientView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        cilientView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        cilientView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        //cilientNameLabel
        contentView.addSubview(cilientNameLabel)
        cilientNameLabel.topAnchor.constraint(equalTo: cilientView.topAnchor, constant: 5).isActive = true
        cilientNameLabel.leadingAnchor.constraint(equalTo: cilientView.leadingAnchor, constant: 5).isActive = true
        cilientNameLabel.trailingAnchor.constraint(equalTo: cilientView.trailingAnchor, constant: -5).isActive = true
        cilientNameLabel.bottomAnchor.constraint(equalTo: cilientView.bottomAnchor, constant: -5).isActive = true
        
        
        //lineView1
        contentView.addSubview(lineView1)
        lineView1.topAnchor.constraint(equalTo: cilientView.bottomAnchor, constant: 10).isActive = true
        lineView1.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        lineView1.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        lineView1.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        //jobInformation
        contentView.addSubview(jobInformation)
        jobInformation.topAnchor.constraint(equalTo: lineView1.bottomAnchor, constant: 10).isActive = true
        jobInformation.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        jobInformation.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //infoTextLabel
        addSubview(infoTextLabel)
        infoTextLabel.topAnchor.constraint(equalTo: jobInformation.bottomAnchor, constant: 10).isActive = true
        infoTextLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        infoTextLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //lineView2
        contentView.addSubview(lineView2)
        lineView2.topAnchor.constraint(equalTo: infoTextLabel.bottomAnchor, constant: 10).isActive = true
        lineView2.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        lineView2.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        lineView2.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        //requirementsLabel
        contentView.addSubview(requirementsNameLabel)
        requirementsNameLabel.topAnchor.constraint(equalTo: lineView2.bottomAnchor, constant: 10).isActive = true
        requirementsNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        requirementsNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //requirementsLabel
        contentView.addSubview(requirementsLabel)
        requirementsLabel.topAnchor.constraint(equalTo: requirementsNameLabel.bottomAnchor, constant: 10).isActive = true
        requirementsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        requirementsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //lineView3
        contentView.addSubview(lineView3)
        lineView3.topAnchor.constraint(equalTo: requirementsLabel.bottomAnchor, constant: 10).isActive = true
        lineView3.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        lineView3.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        lineView3.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        //cateqoryOneName
        addSubview(cateqoryOneName)
        cateqoryOneName.topAnchor.constraint(equalTo: lineView3.bottomAnchor, constant: 25).isActive = true
        cateqoryOneName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        cateqoryOneName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
    }
}
