//
//  SignUpViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import Foundation

protocol SignUpViewModelProtocol {
    init(router: AuthRouterProtocol)
}

final class SignUpViewModel: SignUpViewModelProtocol {
    private let router: AuthRouterProtocol?
    init(router: AuthRouterProtocol) {
        self.router = router
    }
}
