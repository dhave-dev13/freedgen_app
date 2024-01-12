//
//  LessonsPageView.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/12/24.
//

import SwiftUI

struct LessonsPageView: View {
    
    let modules = ModuleData.modules
    
    var body: some View {
        ZStack {
            Color("mainBackground")
            
            VStack {
                
                AppBarView(appBarTitle: "Lessons")
                
                CurrentDateView()
                
                ForEach (modules.filter {$0.moduleType == "lessons"} ) { module in
                    CardModulesView(moduleIcon: module.moduleIcon, moduleTitle: module.moduleName, moduleDescription: module.moduleSubtitle)
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    LessonsPageView()
}
