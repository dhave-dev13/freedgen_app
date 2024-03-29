//
//  HomePageView.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/11/24.
//

import SwiftUI

struct HomePageView: View {
    
    @State var selectedTab:BottomBarSelectedTab = .home
    
    let modules = ModuleData.modules
    
    
    var body: some View {
        ZStack {
            Color("mainBackground")
            
            VStack {
                
                AppBarView(appBarTitle: "Welcome")
                
                CurrentDateView()
                
                ForEach (modules.filter {$0.favorites} ) { module in
                    CardModulesView(moduleIcon: module.moduleIcon, moduleTitle: module.moduleName, moduleDescription: module.moduleSubtitle)
                }
                
                Spacer()
                
            }
        }
    }
    
}
