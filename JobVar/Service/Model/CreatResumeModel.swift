//
//  CreatResumeModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.12.20.
//

import Foundation

struct CreatResumeModel: Codable {
    let result: [Kateqory]
}

struct Kateqory: Codable {
    let name: String
    let nameTwo: [String]
}
