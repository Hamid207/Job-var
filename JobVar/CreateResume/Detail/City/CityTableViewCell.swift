//
//  CityDetailTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 17.12.20.
//

import UIKit


class CityTableViewCell: UITableViewCell {
        
     let cityName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 3
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
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
    
    func update(_ city: String) {
        cityName.text = city
    }
    
    private func setupItem() {
        //cityName
        contentView.addSubview(cityName)
        cityName.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        cityName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        cityName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
    }
    
}
