//
//  PreciselyCreatResumeViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol PreciselyCreatResumeViewModelPrtotocl {
    func tapOnThePreciselyCreatResumeVc()
    init(router: RouterProtocol)
}

final class PreciselyCreatResumeViewModel: PreciselyCreatResumeViewModelPrtotocl {
    private let router: RouterProtocol?
    init(router: RouterProtocol) {
        self.router = router
    }
    
    func tapOnThePreciselyCreatResumeVc() {
        router?.showCreatResumeTarget()
    }
}
