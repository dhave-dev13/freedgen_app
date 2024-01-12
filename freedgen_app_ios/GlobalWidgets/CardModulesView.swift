//
//  CardModulesView.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/11/24.
//

import SwiftUI

struct CardModulesView: View {
    let moduleIcon: String
    let moduleTitle: String
    let moduleDescription: String
    
    
    var body: some View {
        HStack {
            Image(moduleIcon).resizable()
                .frame(width: 60, height: 60).padding(.leading, 20)
            VStack (alignment: .leading) {
                Text(moduleTitle).font(.system(size: 16, weight: .bold))
                Text(moduleDescription)
            }.padding(.leading, 5)
            Spacer()
            Image(systemName: "chevron.forward").font(.system(size: 30, weight: .heavy)).foregroundColor(Color("loginButton")).padding(.trailing, 20)
            
        }.frame(width: 350, height: 100)
            .background(Color.white)
            .cornerRadius(10.0)
            .padding([.leading, .trailing], 20)
            .padding([.bottom], 10)
    }
}
