//
//  CurentUserProfileView.swift
//  PostFolio
//
//  Created by Darmawan on 13/05/25.
//

import SwiftUI

struct CurentUserProfileView: View {
    var body: some View {
        VStack {
            ProfileHeaderView(user: DeveloperPreview.shared.user)
        }
    }
}

struct CurentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurentUserProfileView()
    }
}
