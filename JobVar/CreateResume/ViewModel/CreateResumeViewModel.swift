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
    func tapOnThePeciselyVc()
    func getKateqory(table: UITableView)
    init(router: RouterProtocol?, networkService: NetworkServiceProtocol?)
}

final class CreateResumeViewModel: CreateResumeViewModelProtocol {
    private let router: RouterProtocol?
    var kateqoryArray: [KateqoryModel]?
    var kaeteqory: [Comment]?
    private let networkService: NetworkServiceProtocol?
    init(router: RouterProtocol?, networkService: NetworkServiceProtocol?) {
        self.router = router
        self.networkService = networkService
        
    }
    
    func tapOnThePeciselyVc() {
        router?.showPreciselyCreatResume()
    }
    
     func getKateqory(table: UITableView) {
        networkService?.getComment(completion: { [weak self](result) in
            guard let self = self else { return }
            DispatchQueue.main.async {
                switch result {
                case .success(let kateqory):
                    self.kaeteqory = kateqory
                    table.reloadData()
                case .failure(let error):
                    print("EROROR \(error)")
                }
            }
        })
    }
    
}
