//
//  UserViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Firebase

protocol UserViewModelProtocol {
    var userInfoModel: String? { get set }
    var firebaseSet: FirebaseSetProtocol? { get set }
    func tapOnTheUserSettingsVc()
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol, userInfoModel: String?)
}

final class UserViewModel: UserViewModelProtocol {
    var firebaseSet: FirebaseSetProtocol?
    private let router: RouterProtocol?
    var userInfoModel: String?
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol, userInfoModel: String?) {
        self.userInfoModel = userInfoModel
        self.router = router
        self.firebaseSet = firebaseSet
        print("VIEWMODEEE22 == \(userInfoModel)")
        print("VIEWMODEEE44 == \(self.userInfoModel)")

    }
    
    func tapOnTheUserSettingsVc() {
        router?.showUserSettings()
    }
    

    
}
