//
//  CreateResumeViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

protocol CreateResumeViewModelProtocol: class {
    var kateqoryArray: [KateqoryModel]? { get set }
    var kaeteqory: [Comment]? { get set }
    var resumeModel: CreatResumeModel? { get set }
    func tapOnThePeciselyVc(resumeModel: Kateqory?)
    func getKateqory(table: UITableView)
    init(router: RouterProtocol?, networkService: NetworkServiceProtocol?)
}

final class CreateResumeViewModel: CreateResumeViewModelProtocol {
    private let router: RouterProtocol?
    var kateqoryArray: [KateqoryModel]?
    var resumeModel: CreatResumeModel?
    var kaeteqory: [Comment]?
    private let networkService: NetworkServiceProtocol?
    init(router: RouterProtocol?, networkService: NetworkServiceProtocol?) {
        self.router = router
        self.networkService = networkService
    }
    
    func tapOnThePeciselyVc(resumeModel: Kateqory?) {
        router?.showPreciselyCreatResume(resumeModel: resumeModel)
    }
    
    func getKateqory(table: UITableView) {
        networkService?.getResumeModel(completion: { [weak self] (result) in
            guard let self = self else { return }
            DispatchQueue.main.async {
                switch result {
                case .success(let kateqory1):
                    self.resumeModel = kateqory1
                    table.reloadData()
                case .failure(let error):
                    print("network ERROR \(error)")
                }
            }
        })
    }
    
}
