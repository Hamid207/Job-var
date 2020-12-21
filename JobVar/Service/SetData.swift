//
//  SetData.swift
//  JobVar
//
//  Created by Hamid Manafov on 17.12.20.
//

import UIKit

protocol SetDataProtocol {
    var cityName: String? {get set}
    func setName(name: String)
}

final class SetData: SetDataProtocol {
    var cityName: String?
    
    func setName(name: String) {
        cityName = name
        print("nameeee cityDataVC == \(name)")
    }

}
