//
//  AddResumeModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 07.12.20.
//

import Firebase

struct AddResumeModel {
    let cateqoryOneName: String
    let cateqoryTwoName: String
    let salary: String?
    let city: String
    let cilientName: String
    let detailedInfo: String
    let userId: String
    var favorit: Bool = false
    let ref: DatabaseReference?
    
    init(cateqoryOneName: String, cateqoryTwoName: String, salary: String, city: String, cilirntName: String, detailedInfo: String, userId: String) {
        self.cateqoryOneName = cateqoryOneName
        self.cateqoryTwoName = cateqoryTwoName
        self.salary = salary
        self.city = city
        self.cilientName = cilirntName
        self.detailedInfo = detailedInfo
        self.userId = userId
        self.ref = nil
    }
    
    init(snapShot: DataSnapshot) {
        let snapShotValue = snapShot.value as! [String : AnyObject]
        cateqoryOneName = snapShotValue["cateqoryOneName"] as! String
        cateqoryTwoName = snapShotValue["cateqoryTwoName"] as! String
        salary = snapShotValue["salary"] as? String
        city = snapShotValue["city"] as! String
        cilientName = snapShotValue["cilirntName"] as! String
        detailedInfo = snapShotValue["detailedInfo"] as! String
        userId = snapShotValue["userId"] as! String
        favorit = snapShotValue["favoriy"] as! Bool
        ref = snapShot.ref
    }
    
    func convertToDictinary() -> Any {
        return ["cateqoryOneName" : cateqoryOneName, "cateqoryTwoName" : cateqoryTwoName, "salary" : salary ?? "+", "city" : city, "cilientName" : cilientName, "detailInfo" : detailedInfo, "favorit" : favorit, "userId" : userId]
    }
}
