//
//  UserModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 07.12.20.
//

import Firebase

struct UserModel {
    let uid: String
    let email: String
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email!
    }
}
