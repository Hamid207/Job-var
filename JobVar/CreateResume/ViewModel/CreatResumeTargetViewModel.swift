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
    var cityName: String? {get set}
    var educationName: String? {get set}
    var workExperiene: String? {get set}
    var setData: SetDataProtocol? { get set}
    var resumeModel: Kateqory? { get set }
    var target: String? { get set }
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol?, setData: SetDataProtocol?, resumeModel: Kateqory?, target: String?)
}

final class CreatResumeTargetViewModel: CreatResumeTargetViewModelProtocl {
    var setData: SetDataProtocol?
    var resumeModel: Kateqory?
    var target: String?
    var cityName: String?
    var educationName: String?
    var workExperiene: String?
    private var firebaseSet: FirebaseSetProtocol?
    private let router: RouterProtocol?
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol?, setData: SetDataProtocol?, resumeModel: Kateqory?, target: String?) {
        self.router = router
        self.firebaseSet = firebaseSet
        self.setData = setData
        self.resumeModel = resumeModel
        self.target = target
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
