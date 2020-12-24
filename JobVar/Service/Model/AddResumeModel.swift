//
//  AddResumeModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 07.12.20.
//

import Firebase

struct AddResumeModel {
    let resume: String
    let cateqoryOneName: String
    let cateqoryTwoName: String
    let position: String
    let salary: String?
    let city: String
    let companyName: String
    let age: String
    let education: String
    let workExperience: String
    let detailedInfo: String
    let requirements: String
    let email: String
    let userId: String
    var favorit: Bool = false
    let ref: DatabaseReference?
    
    init(resume: String, cateqoryOneName: String, cateqoryTwoName: String, position: String, companyName: String ,salary: String, city: String, age: String, education: String, workExperience: String, detailedInfo: String, requirements: String, email: String, userId: String) {
        self.resume = resume
        self.cateqoryOneName = cateqoryOneName
        self.cateqoryTwoName = cateqoryTwoName
        self.position = position
        self.salary = salary
        self.city = city
        self.companyName = companyName
        self.age = age
        self.education = education
        self.workExperience = workExperience
        self.detailedInfo = detailedInfo
        self.requirements = requirements
        self.email = email
        self.userId = userId
        self.ref = nil
    }
    
    init(snapShot: DataSnapshot) {
        let snapShotValue = snapShot.value as! [String : AnyObject]
        resume = snapShotValue["resume"] as! String
        cateqoryOneName = snapShotValue["cateqoryOneName"] as! String
        cateqoryTwoName = snapShotValue["cateqoryTwoName"] as! String
        position = snapShotValue["position"] as! String
        salary = snapShotValue["salary"] as? String
        city = snapShotValue["city"] as! String
        companyName = snapShotValue["companyName"] as! String
        age = snapShotValue["age"] as! String
        education = snapShotValue["education"] as! String
        workExperience = snapShotValue["workExperience"] as! String
        detailedInfo = snapShotValue["detailedInfo"] as! String
        requirements = snapShotValue["requirements"] as! String
        email = snapShotValue["email"] as! String
        userId = snapShotValue["userId"] as! String
        favorit = snapShotValue["favorit"] as! Bool
        ref = snapShot.ref
    }
    
    func convertToDictinary() -> Any {
        return [ "resume" : resume, "cateqoryOneName" : cateqoryOneName, "cateqoryTwoName" : cateqoryTwoName, "position" : position, "companyName" : companyName, "salary" : salary!, "city" : city,  "age" : age, "education" : education, "workExperience" : workExperience, "detailedInfo" : detailedInfo, "requirements" : requirements, "email" : email, "favorit" : favorit, "userId" : userId]
    }
}
