//
//  ButtonView.swift
//  PostFolio
//
//  Created by Darmawan on 13/05/25.
//

import SwiftUI

enum ButtonStyleType {
    case primary, secondary, active, ghost
}

struct ButtonView: View {
    var title: String?
    var icon: String?
    var style: ButtonStyleType
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                if let iconName = icon {
                    Image(systemName: iconName)
                        .font(.system(size: 18))
                        .padding(.trailing, title != nil ? 10 : 0)
                }
                
                if let titleText = title {
                    Text(titleText)
                        .fontWeight(.bold)
                }
            }
            .frame(maxWidth: .infinity, minHeight: 32)
            .padding(.horizontal)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(strokeColor, lineWidth: 1)
            )
        }
        .buttonStyle(PlainButtonStyle())
    }
    
    private var backgroundColor: Color {
        switch style {
        case .primary:
            return Color.primary
        case .secondary:
            return Color.secondary
        case .active:
            return Color.blue
        case .ghost:
            return Color.clear
        }
    }
    
    private var foregroundColor: Color {
        switch style {
        case .primary, .active:
            return Color.white
        case .secondary, .ghost:
            return Color.black
        }
    }
    
    private var strokeColor: Color {
        switch style {
        case .ghost:
            return Color.blue
        default:
            return Color.clear
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            ButtonView(title: "Follow", icon: "heart.fill", style: .primary) {
                print("Follow button pressed")
            }
            
            ButtonView(title: "Message", icon: "paperplane.fill", style: .secondary) {
                print("Message button pressed")
            }
            
            ButtonView(title: "Send", icon: nil, style: .active) {
                print("Send button pressed")
            }
            
            ButtonView(title: "More Info", icon: nil, style: .ghost) {
                print("More Info button pressed")
            }
        }
        .padding()
    }
}
