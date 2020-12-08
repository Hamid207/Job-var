//
//  UserInfoModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 07.12.20.
//

import Firebase

struct UserInfoModel {
//    let name: String
//    let lastName: String
//    let city: String?
//    let dateOfBirth: String?
//    //let email: String
//    let number: String?
//    let image: String?
//    let userId: String
//    let ref: DatabaseReference?
//
//    init(name: String, lastName: String, city: String?, dateOfBirth: String?, number: String?, image: String?, userId: String) {
//        self.name = name
//        self.lastName = lastName
//        self.city = city
//        self.dateOfBirth = dateOfBirth
//       //self.email = email
//        self.number = number
//        self.image = image
//        self.userId = userId
//        self.ref = nil
//    }
//
//    init(snapShot: DataSnapshot) {
//        let snapShotValue = snapShot.value as! [String : AnyObject]
//        name = snapShotValue["name"] as! String
//        lastName = snapShotValue["lastName"] as! String
//        city = snapShotValue["city"] as? String
//        dateOfBirth = snapShotValue["dateOfBirth"] as? String
//        //email = snapShotValue["email"] as! String
//        number = snapShotValue["number"] as? String
//        image = snapShotValue["image"] as? String
//        userId = snapShotValue["userId"] as! String
//        ref = snapShot.ref
//    }
//
//    func convertToDictinary() -> Any {
//        return ["name" : name, "lastName" : lastName, "city" : city!, "dataOfBirth" : dateOfBirth!, "number" : number!, "image" : image!, "userId" : userId]
//    }
    let name: String
    let lastName: String?
    let image: String?
    let city: String
    let dateOfBirth: String?
    let number: String?
    let userId: String
    let ref: DatabaseReference?
    init(name: String, lastName: String?, userId: String, city: String, image: String?, dateOfBirth: String?, number: String?) {
        self.name = name
        self.lastName = lastName
        self.city = city
        self.userId = userId
        self.image = image
        self.dateOfBirth = dateOfBirth
        self.number = number
        self.ref = nil
    }
    
    init(snapShot: DataSnapshot) {
        let snapshotValue = snapShot.value as! [String : AnyObject]
        name = snapshotValue["name"] as! String
        lastName = snapshotValue["dateOfBirth"] as? String
        city = snapshotValue["city"] as! String
        userId = snapshotValue["userId"] as! String
        image = snapshotValue["image"] as? String
        number = snapshotValue["number"] as? String
        dateOfBirth = snapshotValue["dataOfBirth"] as? String
        ref = snapShot.ref
    }
    
    func convertToDictinary() -> Any {
        return ["name" : name, "lastName" : lastName, "userId" : userId, "city" : city, "number" : number, "dataOfBirth" : dateOfBirth]
    }
}
