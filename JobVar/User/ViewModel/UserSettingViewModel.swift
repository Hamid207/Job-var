//
//  UserSettingViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol UserSettingViewModelProtocol {
    var userInfoModel: UserInfoModel? { get set }
    var firebaseSet: FirebaseSetProtocol? { get set }
    func popUser()
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol?)
}

final class UserSettingViewModel: UserSettingViewModelProtocol {
    var userInfoModel: UserInfoModel?
    var firebaseSet: FirebaseSetProtocol?
    private let router: RouterProtocol?
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol?) {
        self.router = router
        self.firebaseSet = firebaseSet
    }
    
    func popUser() {
        router?.popUser()
    }

}
