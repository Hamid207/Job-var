//
//  FilterModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 03.03.21.
//

import Firebase

struct FilterModel {
    let position: String?
    let companyName: String?
    var city: String?
    let salary: String?
    let info: String
    let ref: DatabaseReference?
    
    init(position: String, companyName: String, city: String, salary: String, info: String) {
        self.position = position
        self.companyName = companyName
        self.city = city
        self.salary = salary
        self.info = info
        self.ref = nil
    }
    
    init(snapShot: DataSnapshot) {
        let snapShotValue = snapShot.value as! [String : AnyObject]
        position = snapShotValue["position"] as? String
        companyName = snapShotValue["companyName"] as? String
        city = snapShotValue["city"] as? String
        salary = snapShotValue["salary"] as? String
        info = snapShotValue["info"] as! String 
        ref = snapShot.ref
    }
    
    func convertToDictinary() -> Any {
        return ["position" : position, "companyName" : companyName, "city" : city, "salary" : salary, "info" : info]
    }
}
