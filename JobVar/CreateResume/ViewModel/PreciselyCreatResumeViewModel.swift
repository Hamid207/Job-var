//
//  PreciselyCreatResumeViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol PreciselyCreatResumeViewModelPrtotocl {
    func tapOnThePreciselyCreatResumeVc(resumeModel: Kateqory?, target: String?)
    var resumeModel: Kateqory? { get set }
    init(router: RouterProtocol, resumeModel: Kateqory?)
}

final class PreciselyCreatResumeViewModel: PreciselyCreatResumeViewModelPrtotocl {
    private let router: RouterProtocol?
    var resumeModel: Kateqory?
    init(router: RouterProtocol, resumeModel: Kateqory?) {
        self.router = router
        self.resumeModel = resumeModel
    }
    
    func tapOnThePreciselyCreatResumeVc(resumeModel: Kateqory?, target: String?) {
        router?.showCreatResumeTarget(resumeModel: resumeModel, target: target)
    }
}
