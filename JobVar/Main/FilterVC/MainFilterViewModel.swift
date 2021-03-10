//
//  MainFilterViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 03.03.21.
//

import Foundation

protocol MainFilterViewModelProtocol {
    var firebaseSet: FirebaseSetProtocol? { get set }
    func firebaseSet(filterModel: FilterModel)
    func popView()
    var position: String? { get set }
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol?)
}

class MainFilterViewModel: MainFilterViewModelProtocol {
    private let router: RouterProtocol?
    var firebaseSet: FirebaseSetProtocol?
    var position: String?
    required init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol?) {
        self.router = router
        self.firebaseSet = firebaseSet
    }
    
    func firebaseSet(filterModel: FilterModel) {
        firebaseSet?.UserResumeFilter(filterModel: filterModel)
    }
    
    func popView() {
        router?.popVc()
    }
    
}
