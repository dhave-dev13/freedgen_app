//
//  ContentsView.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/12/24.
//

import SwiftUI

struct ContentsView: View {
    @State var selectedTab:BottomBarSelectedTab = .home
    var body: some View {
        VStack {
                if selectedTab == .home {
                    HomePageView()
                }
                
                if selectedTab == .lessons {
                    LessonsPageView()
                }
                
                if selectedTab == .settings {
                    SettingsPageView()
                }
            
                Spacer()
            
                BottomNavigationBar(selectedTab: $selectedTab)
            
        }
    }
}
