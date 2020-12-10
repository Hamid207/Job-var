//
//  UserViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol UserViewModelProtocol {
    var firebaseSet: FirebaseSetProtocol? { get set }
    func tapOnTheUserSettingsVc()
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol)
}

final class UserViewModel: UserViewModelProtocol {
    var firebaseSet: FirebaseSetProtocol?
    private let router: RouterProtocol?
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol) {
        self.router = router
        self.firebaseSet = firebaseSet
    }
    
    func tapOnTheUserSettingsVc() {
        router?.showUserSettings()
    }
}
