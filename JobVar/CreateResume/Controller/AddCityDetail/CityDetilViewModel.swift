//
//  CityDetilViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 17.12.20.
//

import Foundation

protocol CityDetilViewModelProtocol {
    var cityNameArray: [String]? { get set }
    func cityName(name: String)
    var cityName: String? { get set }
    func popToVC()
    init(router: RouterProtocol?, setData: SetDataProtocol?)
}

final class CityDetilViewModel: CityDetilViewModelProtocol {
    private var setData: SetDataProtocol?
    private let router: RouterProtocol?
    var cityName: String?
    var cityNameArray: [String]? = [String]()
    init(router: RouterProtocol?, setData: SetDataProtocol?) {
        self.router = router
        self.setData = setData
        addCityModel()
    }
    
    private func addCityModel() {
        let cityName = ["Baki", "Sumqayit", "Gence"]
        cityNameArray?.append(contentsOf: cityName)
    }
    
    func cityName(name: String) {
//        setData?.cityName = name
        setData?.setName(name: name)
    }
    
    func popToVC() {
        router?.popVc()
    }
}
