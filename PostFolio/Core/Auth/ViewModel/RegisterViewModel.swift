//
//  RegistrationViewModel.swift
//  PostFolio
//
//  Created by Darmawan on 09/05/25.
//

import Foundation

class RegisterViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    @Published var username = ""
    
    @MainActor
    func createUser() async throws {
//        try await AuthService.shared.createUser(
//            withEmail: email,
//            password: password,
//            fullname: fullname,
//            username: username)
        print("DEBUG : Register trigger")
    }
}
