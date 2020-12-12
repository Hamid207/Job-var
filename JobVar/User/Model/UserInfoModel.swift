//
//  UserInfoModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 07.12.20.
//

import Firebase

struct UserInfoModel {
    let name: String
    let lastName: String?
    let image: String?
    let city: String
    let dateOfBirth: String?
    let number: String?
    let userId: String
    let info: String
    let email: String
    let ref: DatabaseReference?
    
    init(name: String, lastName: String?, userId: String, city: String, image: String?, dateOfBirth: String?, number: String?, info: String, email: String) {
        self.name = name
        self.lastName = lastName
        self.city = city
        self.userId = userId
        self.image = image
        self.dateOfBirth = dateOfBirth
        self.number = number
        self.info = info
        self.email = email
        self.ref = nil
    }
    
    init(snapShot: DataSnapshot) {
        let snapshotValue = snapShot.value as! [String : AnyObject]
        name = snapshotValue["name"] as! String
        lastName = snapshotValue["lastName"] as? String
        city = snapshotValue["city"] as! String
        userId = snapshotValue["userId"] as! String
        image = snapshotValue["image"] as? String
        number = snapshotValue["number"] as? String
        dateOfBirth = snapshotValue["dataOfBirth"] as? String
        info = snapshotValue["info"] as! String
        email = snapshotValue["email"] as! String
        ref = snapShot.ref
    }
    
    func convertToDictinaryy() -> Any {
        return ["name" : name, "lastName" : lastName, "userId" : userId, "city" : city, "number" : number, "dataOfBirth" : dateOfBirth, "info" : info, "email" : email]
    }
}
