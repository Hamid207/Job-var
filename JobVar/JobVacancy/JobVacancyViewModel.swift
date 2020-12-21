//
//  JobVacancyViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol JobVacancyViewModelProtocol {
    var firebaseSet: FirebaseSetProtocol? { get set }
    func test(test: FeedResponse)
    init(router: RouterProtocol?, firebaseSet: FirebaseSetProtocol?)
}

final class JobVacancyViewModel: JobVacancyViewModelProtocol {
    var firebaseSet: FirebaseSetProtocol?
    private let router: RouterProtocol?
    init(router: RouterProtocol?, firebaseSet: FirebaseSetProtocol?) {
        self.router = router
        self.firebaseSet = firebaseSet
    }
    
    func test(test: FeedResponse) {
       // router?.showDetail(testArray: test)
    }
}
