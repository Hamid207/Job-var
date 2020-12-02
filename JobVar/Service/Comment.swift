//
//  Comment.swift
//  JobVar
//
//  Created by Hamid Manafov on 01.12.20.
//

import Foundation
struct Comment: Decodable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
    //var resultt: [Resultt]?
}

struct Kateqorry {
    let kateqorry: String
}
