//
//  ContentView.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/3/24.
//

import SwiftUI

struct LoginPageView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var rememberMe: Bool = false
    @State private var isValid: Bool = false
    @ObservedObject var textValidator = TextValidator()
    
    var body: some View {
        NavigationView(content: {
            VStack {
                Image("ImageAssets")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300, alignment: .center)
                
                
                Text("LOGIN")
                    .font(.system(size: 32, weight: .ultraLight, design: .monospaced))
                    .fontWeight(.bold)
                    .padding(.top, 16)
                    .padding(.trailing, 260)
                
                
                TextField("Username", text: $username)
                    .font(.system(size: 16, weight: .thin))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.leading, .trailing], 16)
                
                SecureField("Password", text: $password)
                    .font(.system(size: 16, weight: .thin, design: .default))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.leading, .trailing], 16)
                    .padding([.top, .bottom], 10)
                
                
                
                HStack {
                    
                    Toggle(isOn: $rememberMe) {
                        Text("Remember Me")
                    }
                    .padding([.trailing, .leading], 16)
                    .padding(.bottom, 10)
                    
                    
                }
                
                NavigationLink(destination: ContentsView().navigationBarBackButtonHidden(true), label: {
                    Text("Login")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("loginButton"))
                        .cornerRadius(5)
                        .padding([.leading, .trailing], 16)
                    
                })
                
                Button(action: {
                    // Add your login logic here
                }) {
                    Text("Register")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("signupButton"))
                        .cornerRadius(5)
                        .padding([.leading, .trailing], 16)
                        .padding(.top, 5)
                }
                
                Spacer()
                Text("Forgot Password")
                    .font(.system(size: 16))
                    .underline()
                    .padding()
            }
        })
    }

}

#Preview {
    LoginPageView()
}
