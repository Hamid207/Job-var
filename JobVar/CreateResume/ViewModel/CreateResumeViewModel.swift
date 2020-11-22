//
//  CreateResumeViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol CreateResumeViewModelProtocol: class {
    var kateqoryArray: [KateqoryModel]? { get set }
    func tapOnThePeciselyVc()
    init(router: RouterProtocol?)
}

final class CreateResumeViewModel: CreateResumeViewModelProtocol {
    private let router: RouterProtocol?
    var kateqoryArray: [KateqoryModel]?
    
    init(router: RouterProtocol?) {
        self.router = router
    }
    
    func tapOnThePeciselyVc() {
        router?.showPreciselyCreatResume()
    }
}
