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
                .frame(height: 300, alignment: .center)
            
            
                Text("LOGIN")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.top, 16)
                    .padding(.trailing, 260)
            
            
            
                TextField("Username", text: $username, prompt: Text("This field is required").font(.system(size: 12)))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.leading, .trailing], 16)
                    .padding(.top, 16)
                
            SecureField("Password", text: $password, prompt: Text("This field is required").font(.system(size: 12, weight: .bold, design: .default)))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.leading, .trailing], 16)
                    .padding(.top, 10)
            
            
            
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
            Text("Forgot Password?")
                .font(.body)
                .padding(.top, 10)
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
