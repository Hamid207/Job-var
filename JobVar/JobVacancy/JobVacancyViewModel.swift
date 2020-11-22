//
//  JobVacancyViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol JobVacancyViewModelProtocol {
    func test(test: FeedResponse)
    init(router: RouterProtocol?)
}

final class JobVacancyViewModel: JobVacancyViewModelProtocol {
    private let router: RouterProtocol?
    init(router: RouterProtocol?) {
        self.router = router
    }
    
    func test(test: FeedResponse) {
        router?.showDetail(testArray: test)
    }
}
