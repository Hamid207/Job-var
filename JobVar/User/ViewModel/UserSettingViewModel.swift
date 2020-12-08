//
//  UserSettingViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Firebase

protocol UserSettingViewModelProtocol {
    var userInfoModel: UserInfoModel? { get set }
    func set(userInfoModel: String)
    func popUser()
    init(router: RouterProtocol)
}

final class UserSettingViewModel: UserSettingViewModelProtocol {
    var userInfoModel: UserInfoModel?
//    private var user: UserModel?
//    private var ref: DatabaseReference!
//    private var userInfoModelArray = Array<UserInfoModel>()
    private let router: RouterProtocol?
    init(router: RouterProtocol) {
        self.router = router
    }
    
    func set(userInfoModel: String) {
        router?.popToRootUserViewController(userInfoModel: userInfoModel)
    }
    
    func popUser() {
        router?.popUser()
    }

}
