//
//  MainTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class MainTableViewViewCell: UITableViewCell {
    
    var buttonTarget: Bool = false
    //nameLabel
     private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        //label.backgroundColor = .red
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
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        //label.backgroundColor = .blue
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
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        //label.backgroundColor = .orange
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
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        //label.backgroundColor = .yellow
        label.minimumScaleFactor = 0.2
        label.textAlignment = .left
        label.numberOfLines = 3
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //cilientNameLabel
    private let cilientNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        //label.backgroundColor = .brown
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
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
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupItem()
    }
    
    public func refresh(_ model: FeedResponse) {
        nameLabel.text = model.name
        cityLabel.text = model.city
        cilientNameLabel.text = model.clientName
        infoTextLabel.text = model.infoText
        priceLabel.text = model.price
    }
    
    //favoritesButton target
    @objc func favoritesButtonTarget() {
        print("HAMIDDDDD TEST")
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
        //NAMELABEL
        addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true

        //CITYLABEL
        addSubview(cityLabel)
        cityLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 0).isActive = true
        cityLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //CILIENTNAMELABEL
        addSubview(cilientNameLabel)
        cilientNameLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 0).isActive = true
        cilientNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //INFOTEXTLABEL
        addSubview(infoTextLabel)
        infoTextLabel.topAnchor.constraint(equalTo: cilientNameLabel.bottomAnchor, constant: 6).isActive = true
        infoTextLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        infoTextLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //PRICELABEL
        addSubview(priceLabel)
        priceLabel.topAnchor.constraint(equalTo: infoTextLabel.bottomAnchor, constant: 6).isActive = true
        priceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        //favoritesButton
        addSubview(favoritesButton)
        favoritesButton.topAnchor.constraint(equalTo: infoTextLabel.bottomAnchor, constant: 6).isActive = true
        favoritesButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        favoritesButton.addTarget(self, action: #selector(favoritesButtonTarget), for: .touchDown)
        
        //lineView
        addSubview(lineView)
        //lineView.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 5).isActive = true
        lineView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        lineView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        lineView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 2).isActive = true
        
    }
}
