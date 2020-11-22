//
//  FavoritesViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol FavoritesViewModelProtocol {
    func tapOnTheSgowDetail(testArray: FeedResponse)
    init(router: RouterProtocol)
}

final class FavoritesViewModel: FavoritesViewModelProtocol {
    private let router: RouterProtocol?
    init(router: RouterProtocol) {
        self.router = router
    }
    
    func tapOnTheSgowDetail(testArray: FeedResponse) {
        router?.showFavaritesDetail(testArray: testArray)
    }
}
