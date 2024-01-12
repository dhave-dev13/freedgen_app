//
//  SettingsPageView.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/12/24.
//

import SwiftUI

struct SettingsPageView: View {
    var body: some View {
        ZStack {
            Color("mainBackground")
            
            VStack {
                
                AppBarView(appBarTitle: "Settings")
                
                SettingsCardsView(settingsCardImage: "acount", settingsCardTitle: "Account", settingsCardDescription: "Dhave S. Barsalote", canToggle: true)
                SettingsCardsView(settingsCardImage: "appearance", settingsCardTitle: "Appearance", settingsCardDescription: "Themes, Fonts", canToggle: true)
                SettingsCardsView(settingsCardImage: "refresh", settingsCardTitle: "Sync", settingsCardDescription: "Sync Data to cloud", canToggle: false)
                SettingsCardsView(settingsCardImage: "logout", settingsCardTitle: "Logout", settingsCardDescription: "", canToggle: false)
            
                
                Spacer()
                
            }
        }
    }
}
