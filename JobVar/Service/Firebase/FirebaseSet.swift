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
    var setObserveValue: (([String : Any]) -> ())? { get set }
}

class FirebaseSet: FirebaseSetProtocol {
    private var user: UserModel!
    private var ref: DatabaseReference!
    private var userInfoModelArray = Array<UserInfoModel>()
    var setObserveValue: (([String : Any]) -> ())?
    private var aa = 0
    func currentUser(withPath: String, child: String) {
        firabaseadd(first: withPath, child: child)
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
        firabaseadd(first: withPath, child: child)
        guard let lastName = userInfoModel.lastName, let image = userInfoModel.image, let dateOfBirth = userInfoModel.dateOfBirth,
              let number = userInfoModel.number else { return }
        let userInfo = UserInfoModel(name: userInfoModel.name, lastName: lastName, userId: user.uid, city: userInfoModel.city, image: image, dateOfBirth: dateOfBirth, number: number, info: userInfoModel.info)
        let userRef = ref.child(userInfo.info.lowercased())
//        let userRef = ref.child(ChildEnum.info.rawValue)  // bele alinmir sora bax gor niye
        userRef.setValue(userInfo.convertToDictinaryy())
        print("HAMIDDD === \(userInfo)")
    }
    
    private func firabaseadd(first: String, child: String) {
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
        ref = Database.database().reference().child(first).child(String(user.uid)).child(child)
    }
    
    func firebaseObserve( withPath: String, child: String) {
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
        let ref2 = Database.database().reference()
        ref2.child("allUsers").child(String(user.uid)).child("user").child("info").observe(.value) { [weak self] (snapshot) in
            if let value2 = snapshot.value as? [String : Any], snapshot.exists(){
                let lastName = value2["lastName"] as? String ?? "sefff"
                let name = value2["name"] as? String ?? "nil"
                self?.setObserveValue?(["lastName" : lastName, "name" : name])
            }
        } withCancel: { (error) in
            print("sefffff111")
        }
    }
   
}
