//
//  CreatResumeTargetViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol CreatResumeTargetViewModelProtocl {
    init(router: RouterProtocol)
}

final class CreatResumeTargetViewModel: CreatResumeTargetViewModelProtocl {
    private let router: RouterProtocol?
    init(router: RouterProtocol) {
        self.router = router
    }
}
