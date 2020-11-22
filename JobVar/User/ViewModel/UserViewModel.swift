//
//  UserViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol UserViewModelProtocol {
    func tapOnTheUserSettingsVc()
    init(router: RouterProtocol)
}

final class UserViewModel: UserViewModelProtocol {

    private let router: RouterProtocol?
    init(router: RouterProtocol) {
        self.router = router
    }
    
    func tapOnTheUserSettingsVc() {
        router?.showUserSettings()
    }
    
}
