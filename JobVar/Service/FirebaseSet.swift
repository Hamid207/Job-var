//
//  FirebaseSet.swift
//  JobVar
//
//  Created by Hamid Manafov on 09.12.20.
//

import Firebase
protocol FirebaseSetProtocol {
    func currentUser(withPath: String, child: String)
    func observe()
    func removeAllObserverr()
    func set(userInfoModel: UserInfoModel, withPath: String, child: String)
    func firebaseObserve( withPath: String, child: String)
}

class FirebaseSet: FirebaseSetProtocol {
    private var user: UserModel!
     var ref: DatabaseReference!
    private var userInfoModelArray = Array<UserInfoModel>()
    var aa = 0
    func currentUser(withPath: String, child: String) {
        firabaseadd(withPath: withPath, child: child)
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
    
    func set(userInfoModel: UserInfoModel, withPath: String, child: String) {
        firabaseadd(withPath: withPath, child: child)
        guard let lastName = userInfoModel.lastName, let image = userInfoModel.image, let dateOfBirth = userInfoModel.dateOfBirth,
              let number = userInfoModel.number else { return }
        let userInfo = UserInfoModel(name: userInfoModel.name, lastName: lastName, userId: user.uid, city: userInfoModel.city, image: image, dateOfBirth: dateOfBirth, number: number, fbADD: userInfoModel.fbADD)
        let userRef = ref.child(userInfo.fbADD.lowercased())
        userRef.setValue(userInfo.convertToDictinaryy())
        print("HAMIDDD === \(userInfo)")
    }
    
    private func firabaseadd(withPath: String, child: String) {
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
        ref = Database.database().reference().child(withPath).child(String(user.uid)).child(child)
    }
    
    func firebaseObserve( withPath: String, child: String) {
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
        Database.database().reference().child("istifadeciler").child(String(user.uid)).child("userInfo").child("test").observe(.value, with: { (snapshot) in
            guard let value = snapshot.value as? [String : AnyObject], snapshot.exists() else {
                print("Error with getting data")
                return
            }
            let name = value["name"] as? String ?? "seffff"
            print(name)
            self.aa += 1
            print("value \(self.aa) == \(value) ")
            
        })
        let ref2 = Database.database().reference()
        ref2.child("istifadeciler").child(String(user.uid)).child("userInfo").child("test").observe(.value) { (snapshot) in
            if let value2 = snapshot.value as? [String : Any]{
                let lastName = value2["name"] as? String ?? "sefff"
                print(lastName)
            }
        } withCancel: { (error) in
            print("sefffff111")
        }

    }
   
}
