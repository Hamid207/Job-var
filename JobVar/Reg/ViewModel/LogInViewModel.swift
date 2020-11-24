//
//  LogInViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import Foundation

protocol LogInViewModelProtocol {
    init(router: RouterProtocol)
}

final class LogInViewModel: LogInViewModelProtocol {
    private let router: RouterProtocol?
    init(router: RouterProtocol) {
        self.router = router
    }
}
