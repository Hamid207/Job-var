//
//  ChoiceViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import Foundation

protocol  ChoiceViewModelProtocol {
    init(router: RouterProtocol)
}

final class ChoiceViewModel: ChoiceViewModelProtocol {
    private let router: RouterProtocol?
    init(router: RouterProtocol) {
        self.router = router
    }
}
