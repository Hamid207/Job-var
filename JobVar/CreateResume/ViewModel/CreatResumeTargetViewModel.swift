//
//  CreatResumeTargetViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

protocol CreatResumeTargetViewModelProtocl {
    func firebaseCurrentUser()
    func firebaseObserve()
    func removeAllObservers()
    func showCityDetailVC()
    func setResume(addResumeModel: AddResumeModel)
    var name: String? {get set}
    var setData: SetDataProtocol? { get set}
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol?, setData: SetDataProtocol?)
}

final class CreatResumeTargetViewModel: CreatResumeTargetViewModelProtocl {
    var setData: SetDataProtocol?
    var name: String?
    private var firebaseSet: FirebaseSetProtocol?
    private let router: RouterProtocol?
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol?, setData: SetDataProtocol?) {
        self.router = router
        self.firebaseSet = firebaseSet
        self.setData = setData
    }
    
    func firebaseCurrentUser() {
        firebaseSet?.curreentResume()        
    }
    
    func firebaseObserve() {
        //firebaseSet?.observeAddResumeModel()
                
    }
    
    func removeAllObservers() {
        firebaseSet?.removeAllObserverr()
    }
    
    func setResume(addResumeModel: AddResumeModel) {
        firebaseSet?.setResume(addResumeModel: addResumeModel)
    }
    
    func showCityDetailVC() {
        router?.showCityButtonView()
    }
  
}
