//
//  MainTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class MainTableViewViewCell: UITableViewCell {
    
    var buttonTarget: Bool = false
    
    //positionLabel
    private let positionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 2
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //cateqoryTwoName
    private let cateqoryTwoName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 2
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //cityLabel
    private let cityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
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
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.sizeToFit()
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //infoTextLabel
    private let infoTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        label.minimumScaleFactor = 0.2
        label.textAlignment = .left
        label.numberOfLines = 6
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //cilientNameLabel
    private let cilientNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //resumeAddData
    private let resumeAddData: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        label.textAlignment = .left
        label.sizeToFit()
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "23.12.2020"
        return label
    }()
    
    //favoritesButton
    private let favoritesButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "star1"), for: .normal)
        return button
    }()
    
    //lineView
    private let lineView: UIView = {
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
    
    func refresh(_ model: AddResumeModel) {
        positionLabel.text = model.position
        cateqoryTwoName.text = model.cateqoryOneName
        cityLabel.text = model.city
        cilientNameLabel.text = model.companyName
        infoTextLabel.text = model.detailedInfo
        priceLabel.text = model.salary
    }
    
    //favoritesButton target
    @objc func favoritesButtonTarget() {
        if buttonTarget == false {
            favoritesButton.setImage(UIImage(named: "star2"), for: .normal)
            buttonTarget = true
        }else if buttonTarget == true {
            favoritesButton.setImage(UIImage(named: "star1"), for: .normal)
            buttonTarget = false
        }
    }
    
    //MARK: - setupItem
    private func setupItem(){
        //cateqoryOneName
        contentView.addSubview(positionLabel)
        positionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        positionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        positionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
//        //cateqoryTwoName
//        contentView.addSubview(cateqoryTwoName)
//        cateqoryTwoName.topAnchor.constraint(equalTo: positionLabel.bottomAnchor, constant: 5).isActive = true
//        cateqoryTwoName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
//        cateqoryTwoName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //CITYLABEL
        contentView.addSubview(cityLabel)
        cityLabel.topAnchor.constraint(equalTo: positionLabel.bottomAnchor, constant: 5).isActive = true
        cityLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //PRICELABEL
        contentView.addSubview(priceLabel)
        priceLabel.topAnchor.constraint(equalTo: positionLabel.bottomAnchor, constant: 5).isActive = true
        priceLabel.leadingAnchor.constraint(equalTo: cityLabel.trailingAnchor, constant: 15).isActive = true
        
        //CILIENTNAMELABEL
        contentView.addSubview(cilientNameLabel)
        cilientNameLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 5).isActive = true
        cilientNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        
        //INFOTEXTLABEL
        contentView.addSubview(infoTextLabel)
        infoTextLabel.topAnchor.constraint(equalTo: cilientNameLabel.bottomAnchor, constant: 6).isActive = true
        infoTextLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        infoTextLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //resumeAddData
        contentView.addSubview(resumeAddData)
        resumeAddData.topAnchor.constraint(equalTo: infoTextLabel.bottomAnchor, constant: 6).isActive = true
        resumeAddData.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //favoritesButton
        contentView.addSubview(favoritesButton)
        favoritesButton.topAnchor.constraint(equalTo: infoTextLabel.bottomAnchor, constant: 6).isActive = true
        favoritesButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        favoritesButton.addTarget(self, action: #selector(favoritesButtonTarget), for: .touchDown)
        
        //lineView
        contentView.addSubview(lineView)
//        lineView.topAnchor.constraint(equalTo: favoritesButton.bottomAnchor, constant: 5).isActive = true
        lineView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        lineView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        lineView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
}
