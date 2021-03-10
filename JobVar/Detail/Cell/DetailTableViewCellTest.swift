//
//  DetailTableViewCellTest.swift
//  JobVar
//
//  Created by Hamid Manafov on 12.02.21.
//

import UIKit

class DetailTableViewCellTest: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var educationLabel: UILabel!
    @IBOutlet weak var workExperienceLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var cilientView: UIView!
    @IBOutlet weak var cilientNameLabel: UILabel!
    @IBOutlet weak var lineView1: UIView!
    @IBOutlet weak var jobInformation: UILabel!
    @IBOutlet weak var infoTextLabel: UILabel!
    @IBOutlet weak var lineView2: UIView!
    @IBOutlet weak var requirementsNameLabel: UILabel!
    @IBOutlet weak var requirementsLabel: UILabel!
    @IBOutlet weak var lineView3: UIView!
    @IBOutlet weak var cateqoryOneName: UILabel!
    @IBOutlet weak var creatResumeDateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupItem()
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
        priceLabel.text = "Maaş:  \(model.salary) AZN"
        infoTextLabel.text = model.detailedInfo
        cityLabel.text = model.city
        cilientNameLabel.text = model.companyName
        educationLabel.text = "Təhsil:  \(model.education)"
        workExperienceLabel.text = "İş təcrübəsi:  \(model.workExperience)"
        ageLabel.text = "Yaş:  \(model.age)"
        creatResumeDateLabel.text = "\(model.resumeAddDate)"
        
//        switch model.odeme {
//        case .offline:
//            return odemeLabel.text = "Odeme Offline"
//        case .online:
//            return odemeLabel.text = "Odeme Online"
//        }
    }
    
    func setupItem() {
//        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
//        nameLabel.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
////        label.textColor = UIColor(named: "MainColor")
//        nameLabel.textAlignment = .left
//        nameLabel.minimumScaleFactor = 0.2
//        nameLabel.numberOfLines = 3
//        nameLabel.sizeToFit()
//        nameLabel.lineBreakMode = .byWordWrapping
//        nameLabel.adjustsFontSizeToFitWidth = true
        
        //------------------------------------------------
        
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        nameLabel.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        nameLabel.textAlignment = .left
        nameLabel.minimumScaleFactor = 0.2
        nameLabel.numberOfLines = 3
        nameLabel.sizeToFit()
        nameLabel.lineBreakMode = .byWordWrapping
        nameLabel.adjustsFontSizeToFitWidth = true
        
        cityLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        cityLabel.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        cityLabel.textAlignment = .left
        cityLabel.sizeToFit()
        cityLabel.adjustsFontSizeToFitWidth = true
        cityLabel.minimumScaleFactor = 0.2
        
        educationLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        educationLabel.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        educationLabel.textAlignment = .left
        educationLabel.sizeToFit()
        educationLabel.lineBreakMode = .byWordWrapping
        educationLabel.adjustsFontSizeToFitWidth = true

        workExperienceLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        workExperienceLabel.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        workExperienceLabel.textAlignment = .left
        workExperienceLabel.sizeToFit()
        workExperienceLabel.lineBreakMode = .byWordWrapping
        workExperienceLabel.adjustsFontSizeToFitWidth = true
        
        ageLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        ageLabel.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        ageLabel.textAlignment = .left
        ageLabel.sizeToFit()
        ageLabel.lineBreakMode = .byWordWrapping
        ageLabel.adjustsFontSizeToFitWidth = true
        
        priceLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        priceLabel.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        priceLabel.textAlignment = .left
        priceLabel.sizeToFit()
        priceLabel.adjustsFontSizeToFitWidth = true
        
        cilientNameLabel.font = UIFont.systemFont(ofSize: 21, weight: .medium)
        cilientNameLabel.textColor = .orange
        cilientNameLabel.adjustsFontSizeToFitWidth = true
        cilientNameLabel.textAlignment = .center
        cilientNameLabel.minimumScaleFactor = 0.4
        cilientNameLabel.numberOfLines = 2
        cilientNameLabel.sizeToFit()
        
        jobInformation.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        jobInformation.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        jobInformation.minimumScaleFactor = 0.2
        jobInformation.textAlignment = .left
        jobInformation.numberOfLines = 0
        jobInformation.lineBreakMode = .byWordWrapping
        jobInformation.sizeToFit()
        jobInformation.text = "İş barədə məlumat"
        jobInformation.adjustsFontSizeToFitWidth = true
        
        infoTextLabel.font = UIFont.systemFont(ofSize: 19, weight: .light)
        infoTextLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        infoTextLabel.minimumScaleFactor = 0.2
        infoTextLabel.textAlignment = .left
        infoTextLabel.numberOfLines = 0
        infoTextLabel.lineBreakMode = .byWordWrapping
        infoTextLabel.sizeToFit()
        infoTextLabel.adjustsFontSizeToFitWidth = true
        
        requirementsNameLabel.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        requirementsNameLabel.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        requirementsNameLabel.minimumScaleFactor = 0.2
        requirementsNameLabel.textAlignment = .left
        requirementsNameLabel.numberOfLines = 0
        requirementsNameLabel.lineBreakMode = .byWordWrapping
        requirementsNameLabel.sizeToFit()
        requirementsNameLabel.text = "Namizədə tələblər"
        requirementsNameLabel.adjustsFontSizeToFitWidth = true
        
        requirementsLabel.font = UIFont.systemFont(ofSize: 19, weight: .light)
        requirementsLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        requirementsLabel.minimumScaleFactor = 0.2
        requirementsLabel.textAlignment = .left
        requirementsLabel.numberOfLines = 0
        requirementsLabel.lineBreakMode = .byWordWrapping
        requirementsLabel.sizeToFit()
        requirementsLabel.adjustsFontSizeToFitWidth = true
        
        cateqoryOneName.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        cateqoryOneName.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        cateqoryOneName.textAlignment = .left
        cateqoryOneName.numberOfLines = 3
        cateqoryOneName.sizeToFit()
        cateqoryOneName.lineBreakMode = .byWordWrapping
        cateqoryOneName.adjustsFontSizeToFitWidth = true
        
        creatResumeDateLabel.font = UIFont.systemFont(ofSize: 19, weight: .light)
        creatResumeDateLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        creatResumeDateLabel.minimumScaleFactor = 0.2
        creatResumeDateLabel.textAlignment = .left
        creatResumeDateLabel.numberOfLines = 0
        creatResumeDateLabel.lineBreakMode = .byWordWrapping
        creatResumeDateLabel.sizeToFit()
        creatResumeDateLabel.adjustsFontSizeToFitWidth = true
        
//        workInfo.font = UIFont.systemFont(ofSize: 19, weight: .light)
//        workInfo.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//        workInfo.minimumScaleFactor = 0.2
//        workInfo.textAlignment = .left
//        workInfo.numberOfLines = 0
//        workInfo.lineBreakMode = .byWordWrapping
//        workInfo.sizeToFit()
//        workInfo.adjustsFontSizeToFitWidth = true
    }
    
}
