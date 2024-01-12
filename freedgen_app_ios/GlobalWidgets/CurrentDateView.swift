//
//  CurrentDateView.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/11/24.
//

import SwiftUI

struct CurrentDateView: View {

    var body: some View {
        HStack {
            Group {
                Text("Date: ").font(.system(size: 16, weight: .bold))
                Text("\(formattedDate())").font(.system(size: 16))
            }.padding([.leading], 25).padding(.bottom, 10)
            
            Spacer()
        }
    }
    
    func formattedDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, YYYY"
        return formatter.string(from: Date())
    }
}

#Preview {
    CurrentDateView()
}
