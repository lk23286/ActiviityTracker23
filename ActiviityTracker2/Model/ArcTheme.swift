//
//  ArcTheme.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 14..
//

import Foundation
import SwiftUI

struct ArcTheme {
    
    let arcNumber: Int
    let lightColor: Color
    let darkColor: Color
    
    init(arcNumber: Int, lightColor: Color, darkColor: Color) {
        self.arcNumber = arcNumber
        self.lightColor = lightColor
        self.darkColor = darkColor
    }
}

extension ArcTheme {
    static var sample: [ArcTheme] = [
        
        ArcTheme(arcNumber: 1, lightColor: Theme.greenLight.color, darkColor: Theme.greenDark.color),
        ArcTheme(arcNumber: 2, lightColor: Theme.blueLight.color, darkColor: Theme.blueDark.color),
        ArcTheme(arcNumber: 3, lightColor: Theme.yellowLight.color, darkColor: Theme.yellowDark.color),
        ArcTheme(arcNumber: 4, lightColor: Theme.grayLight.color, darkColor: Theme.grayDark.color)
    ]
}

enum Theme: String, CaseIterable, Identifiable {
    
    case greenLight
    case greenDark
    case blueLight
    case blueDark
    case yellowLight
    case yellowDark
    case grayLight
    case grayDark
    
    var color: Color {
        Color(rawValue)
    }
    
    var name: String {
        rawValue
    }
    var id: String {
        name
    }
}
