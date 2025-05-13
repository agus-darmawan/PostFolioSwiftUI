//
//  UserStatisticView.swift
//  PostFolio
//
//  Created by Darmawan on 13/05/25.
//

import SwiftUI

struct StatisticItemView: View {
    var value: Int
    var label: String
    var fontSize: CGFloat
    func formattedValue() -> String {
        if value >= 1_000_000 {
            return String(format: "%.1fM", Double(value) / 1_000_000)
        } else if value >= 1_000 {
            return String(format: "%.1fK", Double(value) / 1_000)
        } else {
            return "\(value)"
        }
    }
    
    var body: some View {
        VStack {
            Text(formattedValue())
                .font(.system(size: fontSize, weight: .bold))
            Text(label)
                .font(.subheadline)
        }
    }
}

struct UserStatisticView: View {
    var likes: Int
    var following: Int
    var followers: Int
    var fontSize: CGFloat = 20
    
    var body: some View {
        HStack {
            StatisticItemView(value: following, label: "Following", fontSize: fontSize)
            Spacer()
            StatisticItemView(value: followers, label: "Followers", fontSize: fontSize)
            Spacer()
            StatisticItemView(value: likes, label: "Likes", fontSize: fontSize)
        }
        .padding()
        .frame(maxWidth: .infinity)
    }
}

struct UserStatisticView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatisticView(likes: 1500, following: 5000, followers: 1200000)
    }
}
