//
//  DetailViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol DetailViewModelProtocol {
    var mainTableViewCellId: String { get set }
    var addreseumeModel: AddResumeModel? { get set }
    init(router: RouterProtocol, addreseumeModel: AddResumeModel?)
}

final class DetailViewModel: DetailViewModelProtocol {
    var mainTableViewCellId: String = "MainTableViewCellId"
    private let router: RouterProtocol?
    var addreseumeModel: AddResumeModel?
    init(router: RouterProtocol, addreseumeModel: AddResumeModel?) {
        self.router = router
        self.addreseumeModel = addreseumeModel
    }
}
