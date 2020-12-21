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
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol?, setData: SetDataProtocol?, cityVC: CityNameTest?)
}

final class CreatResumeTargetViewModel: CreatResumeTargetViewModelProtocl {
    var setData: SetDataProtocol?
    var cityVC: CityNameTest?
    
    var name: String?
    private var firebaseSet: FirebaseSetProtocol?
    private let router: RouterProtocol?
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol?, setData: SetDataProtocol?, cityVC: CityNameTest?) {
        self.router = router
        self.firebaseSet = firebaseSet
        self.setData = setData
        self.cityVC = cityVC
    }
    
    func firebaseCurrentUser() {
        firebaseSet?.curreentResume()        
    }
    
    func firebaseObserve() {
        //firebaseSet?.observeAddResumeModel()
        name = setData?.cityName
        print("TEST33 ===-== \(setData?.cityName)")
        
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
