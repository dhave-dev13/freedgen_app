//
//  AppBarView.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/12/24.
//

import SwiftUI

struct AppBarView: View {
    var appBarTitle: String
    var body: some View {
        HStack (alignment: .center) {
            Image("fgLogo")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.leading, 20)
            Spacer()
            Text(appBarTitle).font(.system(size: 30, weight: .regular, design: .default))
            Spacer()
            Image(systemName: "slider.horizontal.3").font(.system(size: 30)).padding(.trailing, 20)
        }.frame(width: 400, height: 100)
            .background(Color.white)
    }
}
