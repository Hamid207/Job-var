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
    
    //cityLabel
    private let cityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.sizeToFit()
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
       }()
    
    //priceLabel
     private let priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.sizeToFit()
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //cilientNameLabel
    private let cilientNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        label.textColor = UIColor(named: "MainColor")
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupItem()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func detailRefresh(_ model: AddResumeModel) {
        nameLabel.text = model.cateqoryOneName
        requirementsLabel.text = model.requirements
        priceLabel.text = model.salary
        infoTextLabel.text = model.detailedInfo
        cityLabel.text = model.city
        cilientNameLabel.text = model.companyName
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
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //cityLabel
        addSubview(cityLabel)
        cityLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10).isActive = true
        cityLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //priceLabel
        addSubview(priceLabel)
        priceLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10).isActive = true
        priceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
//
//        //odemeLabel
//        addSubview(odemeLabel)
//        odemeLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10).isActive = true
//        odemeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 120).isActive = true
//
        //cilientNameLabel
        addSubview(cilientNameLabel)
        cilientNameLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 10).isActive = true
        cilientNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //jobInformation
        contentView.addSubview(jobInformation)
        jobInformation.topAnchor.constraint(equalTo: cilientNameLabel.bottomAnchor, constant: 20).isActive = true
        jobInformation.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        jobInformation.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //infoTextLabel
        addSubview(infoTextLabel)
        infoTextLabel.topAnchor.constraint(equalTo: jobInformation.bottomAnchor, constant: 10).isActive = true
        infoTextLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        infoTextLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //requirementsLabel
        contentView.addSubview(requirementsNameLabel)
        requirementsNameLabel.topAnchor.constraint(equalTo: infoTextLabel.bottomAnchor, constant: 15).isActive = true
        requirementsNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        requirementsNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //requirementsLabel
        contentView.addSubview(requirementsLabel)
        requirementsLabel.topAnchor.constraint(equalTo: requirementsNameLabel.bottomAnchor, constant: 10).isActive = true
        requirementsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        requirementsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
    }

}
