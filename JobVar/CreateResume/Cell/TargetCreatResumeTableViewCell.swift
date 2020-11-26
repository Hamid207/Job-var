//
//  TargetCreatResumeTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//


import UIKit

class TargetCreatResumeTableViewCell: UITableViewCell {

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
    let secondNameLabel: UILabel = {
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
    
    //cityLabel
    let cityLbael: UILabel = {
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
        label.text = "Şəhər"
        return label
    }()
    
    //cityButton
    private let citButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        //button.setTitle("Seher secin", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    
    //maashLabel
    private let maashLabel: UILabel = {
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
        label.text = "Maaş"
        return label
    }()
    
    
    //minMaasButton
    private let minMaasButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        button.setTitle("Min", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    
    
    //maxMaasButton
    private let maxMaasButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        button.setTitle("Maks", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    
    private let saveButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        button.setTitle("Yerləşdirin", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .medium)
        return button
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       itemSetup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        citButton.layer.cornerRadius = 5
        minMaasButton.layer.cornerRadius = 5
        maxMaasButton.layer.cornerRadius = 5
        saveButton.layer.cornerRadius = 5
    }
    
    func itemSetup() {
        //namelabel
        addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //secondNameLabel
        addSubview(secondNameLabel)
        secondNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 7).isActive = true
        secondNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        secondNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //cityLabel
        addSubview(cityLbael)
        cityLbael.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 30).isActive = true
        //cityLbael.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        cityLbael.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
       
        //cityButton
        addSubview(citButton)
        citButton.topAnchor.constraint(equalTo: cityLbael.bottomAnchor, constant: 15).isActive = true
        citButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        citButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        citButton.addTarget(self, action: #selector(cityButtonTarget), for: .touchDown)
        
        //maashLabel
        addSubview(maashLabel)
        maashLabel.topAnchor.constraint(equalTo: citButton.bottomAnchor, constant: 15).isActive = true
        //maashLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        maashLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        //minMaasButton
        addSubview(minMaasButton)
        minMaasButton.topAnchor.constraint(equalTo: maashLabel.bottomAnchor, constant: 10).isActive = true
        minMaasButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        minMaasButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2.5).isActive = true
        minMaasButton.addTarget(self, action: #selector(minMaasButtonTarget), for: .touchDown)

        //maxButton
        addSubview(maxMaasButton)
        maxMaasButton.topAnchor.constraint(equalTo: maashLabel.bottomAnchor, constant: 10).isActive = true
        maxMaasButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        maxMaasButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2.5).isActive = true
        maxMaasButton.addTarget(self, action: #selector(maxButtonTarget), for: .touchDown)
        
        //saveButton
        addSubview(saveButton)
        saveButton.topAnchor.constraint(equalTo: minMaasButton.bottomAnchor, constant: 35).isActive = true
        saveButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        saveButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
    }

    @objc func cityButtonTarget() {
        citButton.setTitle("Baki", for: .normal)
    }
    
    @objc func minMaasButtonTarget() {
        minMaasButton.setTitle("500 AZN", for: .normal)
    }
    
    @objc func maxButtonTarget() {
        maxMaasButton.setTitle("1500 AZN", for: .normal)
    }
}

