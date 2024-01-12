//
//  SettingsCardsView.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/12/24.
//

import SwiftUI

struct SettingsCardsView: View {
    let settingsCardImage: String
    let settingsCardTitle: String
    let settingsCardDescription: String
    let canToggle: Bool
    var body: some View {
        HStack {
            Image(settingsCardImage).resizable().frame(width: 60, height: 60).padding([.leading, .trailing], 20)
            VStack (alignment: .leading) {
                Text(settingsCardTitle).font(.system(size: 16, weight: .bold))
                Text(settingsCardDescription)
            }.padding(.leading, 5)
            Spacer()
            if canToggle {
                Image(systemName: "chevron.forward").font(.system(size: 30, weight: .heavy)).foregroundColor(Color("loginButton")).padding(.trailing, 20)
            }
        }.frame(width: .infinity, height: 100).background(Color.white)
    }
}
