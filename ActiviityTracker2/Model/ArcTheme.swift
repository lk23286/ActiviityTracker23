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
    let inkColor: Color
    let paperColor: Color
    
    init(arcNumber: Int, inkColor: Color, paperColor: Color) {
        self.arcNumber = arcNumber
        self.inkColor = inkColor
        self.paperColor = paperColor
    }
}

extension ArcTheme {
    static var sampleToDarkBackground: [ArcTheme] = [
        
        ArcTheme(arcNumber: 1, inkColor: Theme.lightGreenInk.color, paperColor: Theme.lightGreenPaper.color),
        ArcTheme(arcNumber: 2, inkColor: Theme.lightBlueInk.color, paperColor: Theme.lightBluePaper.color),
        ArcTheme(arcNumber: 3, inkColor: Theme.lightYellowInk.color, paperColor: Theme.lightYellowPaper.color),
        ArcTheme(arcNumber: 4, inkColor: Theme.lightGrayInk.color, paperColor: Theme.lightGrayPaper.color)
    ]
    
    static var sampleToLightBackground: [ArcTheme] = [
        
        ArcTheme(arcNumber: 1, inkColor: Theme.lightGreenInk.color, paperColor: Theme.lightGreenPaper.color),
        ArcTheme(arcNumber: 2, inkColor: Theme.lightBlueInk.color, paperColor: Theme.lightBluePaper.color),
        ArcTheme(arcNumber: 3, inkColor: Theme.lightYellowInk.color, paperColor: Theme.lightYellowPaper.color),
        ArcTheme(arcNumber: 4, inkColor: Theme.lightGrayInk.color, paperColor: Theme.lightGrayPaper.color)
    ]
    
}

enum Theme: String, CaseIterable, Identifiable {
    
    case lightGreenInk
    case lightGreenPaper
    case lightBlueInk
    case lightBluePaper
    case lightYellowInk
    case lightYellowPaper
    case lightGrayInk
    case lightGrayPaper
    
    case  darkGreenInk
    case  darkGreenPaper
    case  darkBlueInk
    case  darkBluePaper
    case  darkYellowInk
    case  darkYellowPaper
    case  darkGrayInk
    case  darkGrayPaper
    
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
