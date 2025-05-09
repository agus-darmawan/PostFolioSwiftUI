//
//  LoginViewModel.swift
//  PostFolio
//
//  Created by Darmawan on 08/05/25.
//

import Foundation


class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
//        try await AuthService.shared.login(withEmail: email,password: password)
        print("DEBUG : Login trigger")
    }
}
