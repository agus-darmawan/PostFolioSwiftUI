//
//  PreviewProvider.swift
//  PostFolio
//
//  Created by Darmawan on 09/05/25.
//


import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(
        id: NSUUID().uuidString,
        fullname: "Agus Darmawan",
        email: "wayanagus.dr@gmmail.com",
        username: "agusdarmawn",
        profileImageUrl: "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
        bio: "Lorm ipsum short description  Lorm ipsum short description"
    )
}
