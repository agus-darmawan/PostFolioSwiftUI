//
//  CircularProfileImageView.swift
//  PostFolio
//
//  Created by Darmawan on 09/05/25.
//

import SwiftUI
import Kingfisher

enum ProfileImageSize{
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xLarge
    
    var dimension: CGFloat{
        switch self {
        case .xxSmall: return 28
        case .xSmall: return 32
        case .small: return 40
        case .medium: return 48
        case .large: return 68
        case .xLarge: return 84
        }
    }
}

struct CircularProfileImageView: View {
    var user: User?
    let size: ProfileImageSize
    var body: some View {
        if let imageUrl = user?.profileImageUrl{
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        }else{
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimension,height: size.dimension)
                .foregroundColor(Color(.systemGray4))
        }
       
    }
}

struct CircularProfileImageView_Preview : PreviewProvider{
    static var previews: some View {
        CircularProfileImageView(user: dev.user, size: .small)
    }
}
