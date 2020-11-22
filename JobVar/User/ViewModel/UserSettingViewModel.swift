//
//  UserSettingViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol UserSettingViewModelProtocol {
    init(router: RouterProtocol)
}

final class UserSettingViewModel: UserSettingViewModelProtocol {
    private let router: RouterProtocol?
    init(router: RouterProtocol) {
        self.router = router
    }
}
