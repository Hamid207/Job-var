//
//  ChoiceViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import Foundation

protocol  ChoiceViewModelProtocol {
    func tapOnTheLoigInVc()
    func tapOnTheSignUpVc()
    init(router: AuthRouterProtocol)
}

final class ChoiceViewModel: ChoiceViewModelProtocol {
    private let router: AuthRouterProtocol?
    init(router: AuthRouterProtocol) {
        self.router = router
    }
    
    func tapOnTheLoigInVc() {
        router?.showLoginVc()
    }
    
    func tapOnTheSignUpVc() {
        router?.showSingUpVc()
    }
}
