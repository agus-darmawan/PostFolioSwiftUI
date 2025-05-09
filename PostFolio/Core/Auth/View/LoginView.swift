//
//  LoginView.swift
//  PostFolio
//
//  Created by Darmawan on 08/05/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image("app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120,height: 120)
                    .padding()
                VStack {
                    TextField("Enter your email",text: $viewModel.email)
                        .modifier(InputTextViewModifier())
                    SecureField("Enter your password", text:$viewModel.password)
                        .modifier(InputTextViewModifier())
                }
                NavigationLink {
                Text("Forgot password" )
                } label: {
                    Text("Forgot Password?")
                        .font (.footnote)
                        .fontWeight(.semibold)
                        .padding(. top)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                Button{
                    Task{try await viewModel.login()}
                }label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                Spacer()
                
                Divider()
                NavigationLink {
                    RegisterView()
                        .navigationBarBackButtonHidden(true)
                } label:{
                    HStack(spacing : 4) {
                        Text("Don't have an account?")
                         Text ("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
