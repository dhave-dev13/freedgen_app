//
//  ContentView.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/3/24.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Image("ImageAssets")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 250, alignment: .center)
            
            Text("LOGIN")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top, 6)
                .padding(.leading, 16)
            
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing], 16)
                .padding(.top, 8)
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing], 16)
                .padding(.top, 8)

            Text("Forgot Password?")
                .font(.body)    
            
            Button(action: {
                            // Add your login logic here
                 }) {
                    Text("Login")
                         .foregroundColor(.white)
                         .padding()
                         .frame(maxWidth: .infinity)
                         .background(Color("loginButton"))
                         .cornerRadius(5)
                         .padding([.leading, .trailing], 16)
                         .padding(.top, 16)
                        }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
