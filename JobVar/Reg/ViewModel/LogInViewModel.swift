//
//  LogInViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import Foundation

protocol LogInViewModelProtocol {
    init(router: AuthRouterProtocol)
}

final class LogInViewModel: LogInViewModelProtocol {
    private let router: AuthRouterProtocol?
    init(router: AuthRouterProtocol) {
        self.router = router
    }
}
