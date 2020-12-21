//
//  IshAxtaranlarViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol IshAxtaranlarViewModelProtocol {
    func tapOnTheDetailVc(testArray: FeedResponse)
    init(router: RouterProtocol)
}

final class IshAxtaranlarViewModel: IshAxtaranlarViewModelProtocol {
    private let router: RouterProtocol?
    init(router: RouterProtocol) {
        self.router = router
    }
    
    func tapOnTheDetailVc(testArray: FeedResponse) {
        //router?.showDetail(testArray: testArray)
    }
}
