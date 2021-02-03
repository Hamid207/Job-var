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
    var userInfoModelName: String? { get set }
    var cityName: String? { get set }
    func popUser()
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol?, userInfoModel: UserInfoModel?)
}

final class UserSettingViewModel: UserSettingViewModelProtocol {
    var userInfoModel: UserInfoModel?
    var firebaseSet: FirebaseSetProtocol?
    var userInfoModelName: String?
    var cityName: String?
    private let router: RouterProtocol?
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol?, userInfoModel: UserInfoModel?) {
        self.router = router
        self.firebaseSet = firebaseSet
        self.userInfoModel = userInfoModel
    }
    
    func popUser() {
        router?.popUser()
    }

}
