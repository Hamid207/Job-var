//
//  FirebaseSet.swift
//  JobVar
//
//  Created by Hamid Manafov on 09.12.20.
//

import Firebase
protocol FirebaseSetProtocol: class {
    func currentUser(withPath: String, child: String)
    func observe()
    func removeAllObserverr()
    func set(userInfoModel: UserInfoModel, withPath: String, child: String)
    func firebaseObserve( withPath: String, child: String)
    var setObserveValue: (([String : Any]) -> ())? { get set }
    func mainVCset(name: String, email: String)
}

final class FirebaseSet: FirebaseSetProtocol {
    private var user: UserModel!
    private var ref: DatabaseReference!
    private var userInfoModelArray = Array<UserInfoModel>()
    private var userEmail: String?
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
        let userInfo = UserInfoModel(name: userInfoModel.name, lastName: lastName, userId: user.uid, city: userInfoModel.city, image: image, dateOfBirth: dateOfBirth, number: number, info: userInfoModel.info, email: userEmail ?? "Email nil firebeseSet")
        let userRef = ref.child(userInfo.info.lowercased())
        userRef.setValue(userInfo.convertToDictinaryy())
    }
    
    func mainVCset(name: String, email: String) {
        firabaseadd(first: "allUsers", child: "user")
        let userInfo = UserInfoModel(name: name, lastName: "", userId: user.uid, city: "", image: nil, dateOfBirth: "", number: "", info: "info", email: email)
        let userRef = ref.child(userInfo.info.lowercased())
        userRef.setValue(userInfo.convertToDictinaryy())
    }
    
    private func firabaseadd(first: String, child: String) {
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
        userEmail = user.email // reg eden kimi email bura yazilir
        ref = Database.database().reference().child(first).child(String(user.uid)).child(child)
    }
    
    //MARK: Firabeseden melumat goturmek
    func firebaseObserve( withPath: String, child: String) {
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
        let ref2 = Database.database().reference()
        ref2.child("allUsers").child(String(user.uid)).child("user").child("info").observe(.value) { [weak self] (snapshot) in
            if let value2 = snapshot.value as? [String : Any], snapshot.exists(){
                let lastName = value2["lastName"] as? String ?? "lastName nil firebaseSet"
                let name = value2["name"] as? String ?? "name nil firebaseSet"
                let city = value2["city"] as? String ?? "city nil firebaseSet"
                let dateOfBirth = value2["dataOfBirth"] as? String ?? "dateOfBirth nil firebaseSet"
                let email = value2["email"] as? String ?? "email nil firebaseSet"
                let number = value2["number"] as? String ?? "number nuk firebaseSet"
                self?.setObserveValue?(["lastName" : lastName, "name" : name, "city" : city, "dataOfBirth" : dateOfBirth, "email" : email, "number" : number])
            }
        } withCancel: { (error) in
            print("ERROR RESON FirebaseSet")
        }
    }
   
}
