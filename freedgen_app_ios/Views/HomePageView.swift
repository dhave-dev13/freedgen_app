//
//  HomePageView.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/11/24.
//

import SwiftUI

struct HomePageView: View {
    
    @State var selectedTab:BottomBarSelectedTab = .home
    
    @State private var modules = [
        ModuleDetails(moduleIcon: "calendar_green", moduleName: "Regular Attendance", moduleSubtitle: "Sunday Service", favorites: true),
        ModuleDetails(moduleIcon: "checklist", moduleName: "KiMi Attendance", moduleSubtitle: "Sunday School", favorites: true),
        ModuleDetails(moduleIcon: "calendar_event", moduleName: "Events", moduleSubtitle: "All Church related events", favorites: true),
        ModuleDetails(moduleIcon: "heartbeat", moduleName: "SUYNL", moduleSubtitle: "Start Up Your New Life", favorites: false),
        
    ]
    
    var body: some View {
        ZStack {
            Color("mainBackground")
            
            VStack {
                
                HStack (alignment: .center) {
                    Image("fgLogo")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding(.leading, 20)
                    Spacer()
                    Text("Welcome").font(.system(size: 30, weight: .regular, design: .default))
                    Spacer()
                    Image(systemName: "slider.horizontal.3").font(.system(size: 30)).padding(.trailing, 20)
                }.frame(width: 400, height: 100)
                    .background(Color.white).padding(.bottom, 10)
                
                CurrentDateView()
                
                ForEach (filteredModules, id: \.moduleName) { module in
                    CardModulesView(moduleIcon: module.moduleIcon, moduleTitle: module.moduleName, moduleDescription: module.moduleSubtitle)
                }
                
                Spacer()
                
            }
        }
    }
    
    var filteredModules: [ModuleDetails] {
            return modules.filter { $0.favorites }
        }
}

#Preview {
    HomePageView()
}
