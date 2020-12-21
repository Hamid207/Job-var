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
        name = snapshotValue["name"] as? String ?? "name = snapshotValue[name]"
        lastName = snapshotValue["lastName"] as? String ?? "lastName = snapshotValue[lastName]"
        city = snapshotValue["city"] as? String ?? "city = snapshotValue[city]"
        userId = snapshotValue["userId"] as? String ?? "userId = snapshotValue[userId]"
        image = snapshotValue["image"] as? String  ?? "image = snapshotValue[image]"
        number = snapshotValue["number"] as? String ?? "number = snapshotValue[number]"
        dateOfBirth = snapshotValue["dataOfBirth"] as?  String ?? "dateOfBirth = snapshotValue[dataOfBirth]"
        info = snapshotValue["info"] as? String ?? "info = snapshotValue[info]"
        email = snapshotValue["email"] as? String ?? "email = snapshotValue[email]"
        ref = snapShot.ref
    }
    
    func convertToDictinaryy() -> Any {
        return ["name" : name, "lastName" : lastName, "userId" : userId, "city" : city, "number" : number, "dataOfBirth" : dateOfBirth, "info" : info, "email" : email]
    }
}
