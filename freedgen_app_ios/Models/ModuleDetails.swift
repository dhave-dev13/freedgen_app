//
//  ModuleDetails.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/11/24.
//

import Foundation


class ModuleDetails: Identifiable {
    @Published var moduleIcon: String
    @Published var moduleName: String
    @Published var moduleSubtitle: String
    @Published var favorites: Bool
    @Published var moduleType: String
    
    init(moduleIcon: String, moduleName: String, moduleSubtitle: String, favorites: Bool = false, moduleType: String) {
        self.moduleIcon = moduleIcon
        self.moduleName = moduleName
        self.moduleSubtitle = moduleSubtitle
        self.favorites = favorites
        self.moduleType = moduleType
    }
}

struct ModuleData  {
    static let modules: [ModuleDetails] = [
        ModuleDetails(moduleIcon: "calendar_green", moduleName: "Regular Attendance", moduleSubtitle: "Sunday Service", favorites: true, moduleType: "attendance"),
        ModuleDetails(moduleIcon: "checklist", moduleName: "KiMi Attendance", moduleSubtitle: "Sunday School", favorites: true, moduleType: "attendance"),
        ModuleDetails(moduleIcon: "calendar_event", moduleName: "Events", moduleSubtitle: "All Church related events", favorites: true, moduleType: "events"),
        ModuleDetails(moduleIcon: "heart_beat", moduleName: "SUYNL", moduleSubtitle: "Start Up Your New Life", favorites: false, moduleType: "lessons"),
        ModuleDetails(moduleIcon: "pagsangkap", moduleName: "PAG-SANGKAP", moduleSubtitle: "Discipleship Series", favorites: false, moduleType: "lessons"),
    ]
}

