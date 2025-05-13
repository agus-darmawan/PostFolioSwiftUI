//
//  File.swift
//  PostFolio
//
//  Created by Darmawan on 09/05/25.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let stats: [String: Int]
    let email: String
    let username: String
    var profileImageUrl: String?
    let bio: String?
}
