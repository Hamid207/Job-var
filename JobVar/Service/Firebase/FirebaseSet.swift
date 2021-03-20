//
//  FirebaseSet.swift
//  JobVar
//
//  Created by Hamid Manafov on 09.12.20.
//

import Firebase
protocol FirebaseSetProtocol: class {
    func currentUser(withPath: String, child: String)
    func curreentResume()
    func creatAllResume()
    func observeUserInfoModel()
    func observeAddResumeModel(tableView: UITableView)
    func removeAllObserverr()
    func setUserInfo(userInfoModel: UserInfoModel, withPath: String, child: String)
    func setResume(addResumeModel: AddResumeModel)
    func firebaseObserve( withPath: String, child: String)
    var setObserveValue: (([String : Any]) -> ())? { get set }
    var setFilterObserveValue: (([String : Any]) -> ())? { get set }
    func mainVCset(name: String, email: String)
    var setResumeObserverValue: (([String : Any]) -> ())? { get set }
    var addResumeArray:  Array<AddResumeModel>? { get set }
    var addAllResumeArray: Array<AddResumeModel>? { get set }
    var filterArray: FilterModel? { get set }
    func UserResumeFilter(filterModel: FilterModel?)
    func userFilterObserve()
    func filterVC()
}

final class FirebaseSet: FirebaseSetProtocol {
    private var user: UserModel!
    private var ref: DatabaseReference!
    private var userInfoModelArray = Array<UserInfoModel>()
    private let resumeRandomIdNumber = Int.random(in: 1..<10000000000000000)
    private var userEmail: String?
    var addResumeArray:  Array<AddResumeModel>? = Array<AddResumeModel>()
    var addAllResumeArray: Array<AddResumeModel>? = Array<AddResumeModel>()
    var filterArray: FilterModel?
    var setObserveValue: (([String : Any]) -> ())?
    var setResumeObserverValue: (([String : Any]) -> ())?
    var setFilterObserveValue: (([String : Any]) -> ())?
    private var filterr: FilterModel?
    
    //info
    func currentUser(withPath: String, child: String) {
        firabaseadd(first: withPath, child: child)
    }
    
    //resume
    func curreentResume() {
        firebaseResumeAdd()
    }
    
    func creatAllResume() {
        firebaseAllResume()
    }
    
    func filterVC() {
        firebaseFilter()
    }
    
    func observeUserInfoModel() { //bu isdemir bunun yerine firebaseObserve di
        firabaseadd(first: "allUsers", child: "child")
//        ref.obse
        ref.observe(.value) { [weak self] (snapshot) in
            var _tasks = Array<UserInfoModel>()
            for item in snapshot.children {
                let task = UserInfoModel(snapShot: item as! DataSnapshot)
                _tasks.append(task)
            }
            self?.userInfoModelArray = _tasks
        }
    }
    
    func observeAddResumeModel(tableView: UITableView) {
        let ref = Database.database().reference().child("allResume")
        let test1 = ref.queryLimited(toLast: 5)
        ref.observe(.value) { [weak self] (snapshot) in
            var _tasks = Array<AddResumeModel>()
            for item in snapshot.children {
                let task = AddResumeModel(snapShot: item as! DataSnapshot)
                _tasks.append(task)
            }
            //JobVacancyViewController
            let allJobTask = _tasks.sorted(by: { $0.resumeAddDate > $1.resumeAddDate})
            self?.addAllResumeArray = allJobTask
            //MainVC
            let task = _tasks.sorted(by: { $0.resumeAddDate > $1.resumeAddDate})
            self?.addResumeArray = task
            self?.addResumeArray = task.filter({$0.position.contains(self?.filterr?.position ?? "") && $0.city.contains(self?.filterr?.city ?? "") || $0.position.lowercased().contains(self?.filterr?.position?.lowercased() ?? "") && $0.city.contains(self?.filterr?.city ?? "") || $0.companyName.lowercased().contains(self?.filterr?.companyName?.lowercased() ?? "") || $0.salary.lowercased().contains(self?.filterr?.salary ?? "")})
            DispatchQueue.main.async {
                tableView.reloadData()
            }
        }
    }
    
    func removeAllObserverr() {
        ref.removeAllObservers()
    }
    
    //Uset info add + update
    func setUserInfo(userInfoModel: UserInfoModel, withPath: String, child: String) {
        firabaseadd(first: withPath, child: child)
        guard let lastName = userInfoModel.lastName, let image = userInfoModel.image, let dateOfBirth = userInfoModel.dateOfBirth,
              let number = userInfoModel.number else { return }
        let userInfo = UserInfoModel(name: userInfoModel.name, lastName: lastName, userId: user.uid, city: userInfoModel.city, image: image, dateOfBirth: dateOfBirth, number: number, info: userInfoModel.info, email: userEmail ?? "Email nil firebeseSet")
        let userRef = ref.child(userInfo.info.lowercased())
        userRef.setValue(userInfo.convertToDictinaryy())
    }
    
    //creart resume
    func setResume(addResumeModel: AddResumeModel) {
        let addResume = AddResumeModel(resume: "resume Number - \(resumeRandomIdNumber)N\(addResumeModel.resume)", cateqoryOneName: addResumeModel.cateqoryOneName, cateqoryTwoName: addResumeModel.cateqoryTwoName, position: addResumeModel.position, companyName: addResumeModel.companyName, salary: addResumeModel.salary , city: addResumeModel.city, age: addResumeModel.age, education: addResumeModel.education, workExperience: addResumeModel.workExperience, detailedInfo: addResumeModel.detailedInfo, requirements: addResumeModel.requirements, email: addResumeModel.email, userId: "user.uid", resumeAddTime: addResumeModel.resumeAddTime, resumeAddDate: addResumeModel.resumeAddDate)
        //userResume
        firebaseResumeAdd()
        let resumeRef = ref.child(addResume.resume.lowercased())
        resumeRef.setValue(addResume.convertToDictinary())
        
        //allResume
        firebaseAllResume()
        let resumeRef2 = ref.child(addResume.resume.lowercased())
        resumeRef2.setValue(addResume.convertToDictinary())
    }
    
    //MainViewController acilan kimi bu isdeyir
    func mainVCset(name: String, email: String) {
        firabaseadd(first: "allUsers", child: "user")
        let userInfo = UserInfoModel(name: name, lastName: "", userId: user.uid, city: "", image: nil, dateOfBirth: "", number: "", info: "userinfo", email: email)
        let userRef = ref.child(userInfo.info.lowercased())
        userRef.setValue(userInfo.convertToDictinaryy())
    }
    
    //FilterVc
    func UserResumeFilter(filterModel: FilterModel?) {
        firabaseadd(first: "allUsers", child: "user")
        guard let postion = filterModel?.position, let companyName = filterModel?.companyName, var city = filterModel?.city, let salary = filterModel?.salary else { return }
        if city == "" {
            city = "Baki"
        }
        let model = FilterModel(position: postion, companyName: companyName, city: city, salary: salary, info: "userFilter")
        filterArray = model
        let userRef = ref.child(model.info.lowercased())
        userRef.setValue(model.convertToDictinary())
    }
    
    private func firabaseadd(first: String, child: String) {
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
        userEmail = user.email // reg eden kimi email bura yazilir
        ref = Database.database().reference().child(first).child(String(user.uid)).child(child)
    }
    
    private func firebaseResumeAdd() {
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
        ref = Database.database().reference().child("allUsers").child(String(user.uid)).child("user").child("userResume")
    }
    
    private func firebaseFilter() {
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
        ref = Database.database().reference().child("allUsers").child(String(user.uid)).child("user").child("userfilter")
    }
    
    private func firebaseAllResume() {
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
        ref = Database.database().reference().child("allResume")
    }
    
    //MARK: Firabeseden allUserden melumat goturmek
    func firebaseObserve( withPath: String, child: String) {
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
        let ref2 = Database.database().reference()
        ref2.child(withPath).child(String(user.uid)).child(child).child("userinfo").observe(.value) { [weak self] (snapshot) in
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
    
    //MARK: -  Firabeseden userFilterden melumat goturmek
    func userFilterObserve() {
        guard let currentUser = Auth.auth().currentUser else { return }
        user = UserModel(user: currentUser)
//        filterr = FilterModel(position: "position", companyName: "companyName", city: "city", salary: "salary", info: "")
        let ref2 = Database.database().reference()
        ref2.child("allUsers").child(String(user.uid)).child("user").child("userfilter").observe(.value) { [weak self] (snapshot) in
            if let value = snapshot.value as? [String : Any], snapshot.exists() {
                let position = value["position"] as? String ?? "position nil firebaseSet"
                let companyName = value["companyName"] as? String ?? "companyName nil firebaseSet"
                let city = value["city"] as? String ?? "city nil firebaseSet"
                let salary = value["salary"] as? String ?? "salary nil firebaseSet"
                self?.setFilterObserveValue?(["position" : position, "companyName" : companyName, "city" : city, "salary" : salary])
                self?.filterr = FilterModel(position: position, companyName: companyName, city: city, salary: salary, info: "")
            }
        } withCancel: { (error) in
            print("ERROR RESON FirebaseSet userFilterObserve")
        }
    }
    
    func firebaseResumeObserve() { // buna heleki ehtiyac yoxdu
        let ref = Database.database().reference()
//        ref.child("allResume")
        ref.child("allResume").observe(.value) { [weak self ](snapshot) in
            if let value = snapshot.value as? [String : Any], snapshot.exists() {
                let cateqoryOneName = value["cateqoryOneName"] as? String ?? "cateqoryOneName nil farebaseSet"
                self?.setResumeObserverValue?(["cateqoryOneName" : cateqoryOneName])
            }
        } withCancel: { (error) in
            print("ERROR RESON FirebaseSet func firebaseResumeObserve()")
        }

    }
   
}
