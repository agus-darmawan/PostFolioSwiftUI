//
//  InputTextViewModifier.swift
//  PostFolio
//
//  Created by Darmawan on 09/05/25.
//

import SwiftUI

struct InputTextViewModifier: ViewModifier{
    func body(content: Content) -> some View {
    content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
    }
}
