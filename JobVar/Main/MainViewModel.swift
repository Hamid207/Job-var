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
    func tapOnTheComment(addreseumeModel: AddResumeModel)
    func tapOnTheJobVacancy()
    func tapOnTheCreateResume()
    func tapOnTheIsAxtaranlar()
    var addResumeArray: [AddResumeModel]? { get set }
    init(router: RouterProtocol?, firebaseSet: FirebaseSetProtocol)
}

final class MainViewModel: MainViewModelProtocol {
    var mainTableViewCellId: String = "MainTableViewCellId"
    var secondTableVIewCellId: String = "SecondTableVIewCellId"
    var firebaseSet: FirebaseSetProtocol?
    var addResumeArray: [AddResumeModel]?
    private let router: RouterProtocol?
    init(router: RouterProtocol?, firebaseSet: FirebaseSetProtocol) {
        self.router = router
        self.firebaseSet = firebaseSet
    }
    
    func tapOnTheComment(addreseumeModel: AddResumeModel) {
        router?.showDetail(addreseumeModel: addreseumeModel)
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
