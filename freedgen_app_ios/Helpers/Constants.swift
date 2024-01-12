//
//  Constants.swift
//  freedgen_app_ios
//
//  Created by Dhave Barsalote on 1/12/24.
//

import SwiftUI

class SafeAreaManager {
    static let shared = SafeAreaManager()
    var topInset: CGFloat = 59
    var bottomInset: CGFloat = 0
}

extension UIDevice {
    static var isIPad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
    
    static var isIPhone: Bool {
        UIDevice.current.userInterfaceIdiom == .phone
    }
}
