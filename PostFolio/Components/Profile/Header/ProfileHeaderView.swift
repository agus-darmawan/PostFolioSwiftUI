//
//  ProfileHeaderView.swift
//  PostFolio
//
//  Created by Darmawan on 09/05/25.
//

import SwiftUI

struct ProfileHeaderView: View {
    var user: User?
    
    init(user: User?) {
        self.user = user
    }
    
    var body: some View {
        VStack{
            HStack(alignment: .top) {
                CircularProfileImageView(user: user, size: .large)
                    .padding(.trailing, 12)
                
                VStack(alignment: .leading, spacing: 8) {
                    VStack(alignment: .leading) {
                        Text(user?.fullname ?? "")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                            .truncationMode(.tail)
                            .padding(.bottom, 2)
                        if let bio = user?.bio {
                            Text(bio)
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top)
        
            UserStatisticView(
                likes: user?.stats["likes"] ?? 0,
                following: user?.stats["following"] ?? 0,
                followers: user?.stats["followers"] ?? 0
            )
            .padding(.horizontal)
            
            HStack {
                ButtonView(title: "Edit Profile", style: .primary) {
                    print("Follow button pressed")
                }
            }
            .padding(.horizontal)
     
        Spacer()
        }
    }
}

struct ProfileHeaderView_Preview: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: DeveloperPreview.shared.user)
            .previewLayout(.sizeThatFits)
    }
}
