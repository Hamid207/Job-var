//
//  FeedResponce.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

struct FeedResponse {
    let name: String
    let price: String?
    let location: String?
    let image: String?
    let infoText: String?
    let city: String
    let clientName: String
    let odeme: OdemeUsulu
}

enum OdemeUsulu: String {
    case online = "Online"
    case offline = "Offline"
}
