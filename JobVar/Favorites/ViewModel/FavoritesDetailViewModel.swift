//
//  FavoritesDetailViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation

protocol FavoritesDetailViewModelProtocol {
    var testArray: FeedResponse? { get set }
    init(router: RouterProtocol, testArray: FeedResponse?)
}

final class FavoritesDetailViewModel: FavoritesDetailViewModelProtocol {
    private let router: RouterProtocol?
    var testArray: FeedResponse?
    init(router: RouterProtocol, testArray: FeedResponse?) {
        self.router = router
        self.testArray = testArray
    }
}

