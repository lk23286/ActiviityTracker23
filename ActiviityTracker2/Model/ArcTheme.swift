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
    let opacity: Double
    
    init(arcNumber: Int, inkColor: Color, paperColor: Color, opacity: Double = 0.05) {
        self.arcNumber = arcNumber
        self.inkColor = inkColor
        self.paperColor = paperColor
        self.opacity = opacity
    }
    
    init(arcNumber: Int) {
        switch arcNumber {
        case 1:
            self.arcNumber = arcNumber
            self.inkColor = Theme.lightGreenInk.color
            self.paperColor = Theme.lightGreenPaper.color
            self.opacity = 1.0
        case 2:
            self.arcNumber = arcNumber
            self.inkColor = Theme.lightBlueInk.color
            self.paperColor = Theme.lightBluePaper.color
            self.opacity = 1.0
        case 3:
            self.arcNumber = arcNumber
            self.inkColor = Theme.lightYellowInk.color
            self.paperColor = Theme.lightYellowPaper.color
            self.opacity = 1.0
        default:
            self.arcNumber = arcNumber
            self.inkColor = Theme.lightGrayInk.color
            self.paperColor = Theme.lightGrayPaper.color
            self.opacity = 1.0
            
        }
    }
    
    
}

extension ArcTheme {
    static var lightSample: [ArcTheme] = [
        
        ArcTheme(arcNumber: 1, inkColor: Theme.lightGreenInk.color, paperColor: Theme.lightGreenPaper.color),
        ArcTheme(arcNumber: 2, inkColor: Theme.lightBlueInk.color, paperColor: Theme.lightBluePaper.color),
        ArcTheme(arcNumber: 3, inkColor: Theme.lightYellowInk.color, paperColor: Theme.lightYellowPaper.color),
        ArcTheme(arcNumber: 4, inkColor: Theme.lightGrayInk.color, paperColor: Theme.lightGrayPaper.color)
    ]
    
    static var darkSample: [ArcTheme] = [
        
        ArcTheme(arcNumber: 1, inkColor: Theme.darkGreenInk.color, paperColor: Theme.darkGreenPaper.color),
        ArcTheme(arcNumber: 2, inkColor: Theme.darkBlueInk.color, paperColor: Theme.darkBluePaper.color),
        ArcTheme(arcNumber: 3, inkColor: Theme.darkYellowInk.color, paperColor: Theme.darkYellowPaper.color),
        ArcTheme(arcNumber: 4, inkColor: Theme.darkGrayInk.color, paperColor: Theme.darkGrayPaper.color)
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


struct K {
    static var backgroundGray = "bkgGray"
}

