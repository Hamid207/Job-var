//
//  FirebaseSet.swift
//  JobVar
//
//  Created by Hamid Manafov on 09.12.20.
//

import UIKit
import Firebase

protocol FirebaseSetProtocol {
    func currentUser(withPath: String, child: String)
    func observe()
    func removeAllObserverr()
    func set()
}

class FirebaseSet: FirebaseSetProtocol {
    private var user: UserModel!
    private var ref: DatabaseReference!
    private var userInfoModelArray = Array<UserInfoModel>()
    
    func currentUser(withPath: String, child: String) {
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
        ref = Database.database().reference(withPath: withPath).child(String(user.uid)).child(child)
    }
    
    func observe() {
        ref.observe(.value) { [weak self] (snapshot) in
            var _tasks = Array<UserInfoModel>()
            for item in snapshot.children {
                let task = UserInfoModel(snapShot: item as! DataSnapshot)
                _tasks.append(task)
            }
            self?.userInfoModelArray = _tasks
        }
    }
    
    func removeAllObserverr() {
        ref.removeAllObservers()
    }
    
    
    func set() {// blele alinmir bular userSettingViewModelde olmalidi ordan soxranit olmalidi firebasee bura ise firbaseden glmelidi yeqinki)
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
        ref = Database.database().reference(withPath: "istifadeciler").child(String(user.uid)).child("userInfo")
        let userInfo = UserInfoModel(name: "HAMID", lastName: "Manafov", userId: user.uid, city: "Baku", image: "nil", dateOfBirth: "26.03.1994", number: "+994 50 534 94 34")
//        let userInfo = UserInfoModel(name: userInfoModel.name, lastName: userInfoModel?.lastName, userId: user.uid, city: userInfoModel?.city, image: userInfoModel?.image, dateOfBirth: userInfoModel?.dateOfBirth, number: userInfoModel.num)
        let userRef = ref.child(userInfo.name.lowercased())
        userRef.setValue(userInfo.convertToDictinary())
        print("HAMIDDDD")
    }
    
}
