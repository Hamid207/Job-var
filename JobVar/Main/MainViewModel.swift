//
//  MainViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import Foundation
import Firebase

protocol MainViewModelProtocol {
    var mainTableViewCellId: String { get set }
    var secondTableVIewCellId: String { get set }
    var firebaseSet: FirebaseSetProtocol? { get set }
    func tapOnTheComment(testArray: FeedResponse)
    func tapOnTheJobVacancy()
    func tapOnTheCreateResume()
    func tapOnTheIsAxtaranlar()
    init(router: RouterProtocol?, firebaseSet: FirebaseSetProtocol)
}

final class MainViewModel: MainViewModelProtocol {
    var mainTableViewCellId: String = "MainTableViewCellId"
    var secondTableVIewCellId: String = "SecondTableVIewCellId"
    var firebaseSet: FirebaseSetProtocol?

    private let router: RouterProtocol?
    init(router: RouterProtocol?, firebaseSet: FirebaseSetProtocol) {
        self.router = router
        self.firebaseSet = firebaseSet
    }
    
    func tapOnTheComment(testArray: FeedResponse) {
        router?.showDetail(testArray: testArray)
    }
    
    func tapOnTheCreateResume() {
        router?.showCreatResume()
    }
    
    func tapOnTheJobVacancy() {
        router?.showJobVacancy()
    }
    
    func tapOnTheIsAxtaranlar() {
        router?.showIshAxtaranlar()
    }
    
    func add() {
        
    }
    
}
