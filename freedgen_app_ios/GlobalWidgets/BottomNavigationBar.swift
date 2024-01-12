//
//  BottomNavigationBar.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/12/24.
//

import SwiftUI

enum BottomBarSelectedTab:Int{
    case home = 0
    case lessons = 1
    case settings = 2
}

struct BottomNavigationBar: View {
    
    @Binding var selectedTab: BottomBarSelectedTab
    
    var body: some View {
        HStack (alignment: .bottom, spacing: 10) {
            //APPS
            Button {
                selectedTab = .home
            } label: {
                ZStack{
                    BottomBarButtonView(image: "house.fill", text: "APPS", isActive: selectedTab == .home)
                }
            }
            
            //LESSONS
            Button {
                selectedTab = .lessons
            } label: {
                ZStack{
                    BottomBarButtonView(image: "books.vertical.circle", text: "LESSONS", isActive: selectedTab == .lessons)
                }
            }
            
            //SETTINGS
            Button {
                selectedTab = .settings
            } label: {
                ZStack{
                    BottomBarButtonView(image: "gearshape", text: "SETTINGS", isActive: selectedTab == .settings)
                }
            }
        }.frame(height: 60)
    }
    struct BottomBarButtonView: View {
        
        var image:String
        var text:String
        var isActive:Bool
        
        var body: some View {
            HStack(spacing: 10){
                    GeometryReader{
                        geo in
                        VStack(spacing: UIDevice.isIPad ? 6 : 3){
                            Rectangle()
                                .frame(height: 0)
                            Image(systemName: image)
                                .resizable()
                                .frame(width: UIDevice.isIPad ? 30 : 24,height: UIDevice.isIPad ? 30 : 24)
                                .foregroundColor(isActive ? .blue : .gray)
                            Text(text)
                                .font(.caption)
                                .foregroundColor(isActive ? .blue : .gray)
                        }
                    }
                
            }
        }
}
    
}
