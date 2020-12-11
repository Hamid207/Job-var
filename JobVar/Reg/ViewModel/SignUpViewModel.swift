//
//  SignUpViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import Foundation

protocol SignUpViewModelProtocol {
    var firebaseSet: FirebaseSetAuthProtocol? { get set }
    init(router: AuthRouterProtocol, firebaseSet: FirebaseSetAuthProtocol?)
}

final class SignUpViewModel: SignUpViewModelProtocol {
    var firebaseSet: FirebaseSetAuthProtocol?
    private let router: AuthRouterProtocol?
    init(router: AuthRouterProtocol, firebaseSet: FirebaseSetAuthProtocol?) {
        self.router = router
        self.firebaseSet = firebaseSet
    }
}
