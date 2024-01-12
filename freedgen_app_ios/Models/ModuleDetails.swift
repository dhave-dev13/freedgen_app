//
//  ModuleDetails.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/11/24.
//

import Foundation

@Observable class ModuleDetails: Identifiable {
    var moduleIcon: String
    var moduleName: String
    var moduleSubtitle: String
    var favorites: Bool
    
    init(moduleIcon: String, moduleName: String, moduleSubtitle: String, favorites: Bool = false) {
        self.moduleIcon = moduleIcon
        self.moduleName = moduleName
        self.moduleSubtitle = moduleSubtitle
        self.favorites = favorites
    }
}


