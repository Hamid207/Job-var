//
//  MainCollectionViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//


import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
     private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.backgroundColor = UIColor(named: "MainColor")
        label.textAlignment = .center
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 2
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(name: String) {
        nameLabel.text = name
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.layer.cornerRadius = 5
        //nameLabel.layer.borderWidth = 1
        nameLabel.layer.masksToBounds = true
        //nameLabel.layer.borderColor = UIColor(named: "MainColor")?.cgColor
    }
    
    private func setup() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        addSubview(nameLabel)
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
}
