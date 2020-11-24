//
//  SignUpViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import Foundation

protocol SignUpViewModelProtocol {
    init(router: RouterProtocol)
}

final class SignUpViewModel: SignUpViewModelProtocol {
    private let router: RouterProtocol?
    init(router: RouterProtocol) {
        self.router = router
    }
}
