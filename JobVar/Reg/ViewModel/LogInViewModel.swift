//
//  LogInViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import Foundation

protocol LogInViewModelProtocol {
    var firebaseSet: FirebaseSetAuthProtocol? { get set }
    func popToRoot()
    init(router: AuthRouterProtocol, firebaseSet: FirebaseSetAuthProtocol?)
}

final class LogInViewModel: LogInViewModelProtocol {
    private let router: AuthRouterProtocol?
    var firebaseSet: FirebaseSetAuthProtocol?
    init(router: AuthRouterProtocol, firebaseSet: FirebaseSetAuthProtocol?) {
        self.router = router
        self.firebaseSet = firebaseSet
    }
    
    func popToRoot() {
        router?.popToRoot()
    }
}
