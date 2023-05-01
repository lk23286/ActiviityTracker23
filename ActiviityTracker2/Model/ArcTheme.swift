//
//  ArcTheme.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 14..
//

import Foundation
import SwiftUI

struct ArcTheme: Identifiable {

    
    var id: UUID
    
    let arcNumber: Int
    let inkColor: Color
    let paperColor: Color
    let opacity: Double
    
    init(id: UUID = UUID(), arcNumber: Int, inkColor: Color, paperColor: Color, opacity: Double = 0.05) {
        self.id = id
        self.arcNumber = arcNumber
        self.inkColor = inkColor
        self.paperColor = paperColor
        self.opacity = opacity
    }
    
    init(id: UUID = UUID(), arcNumber: Int) {
        switch arcNumber {
        case 1:
            self.id = id
            self.arcNumber = arcNumber
            self.inkColor = ThemeColor.lightGreenInk.color
            self.paperColor = ThemeColor.lightGreenPaper.color
            self.opacity = 0.05
        case 2:
            self.id = id
            self.arcNumber = arcNumber
            self.inkColor = ThemeColor.lightBlueInk.color
            self.paperColor = ThemeColor.lightBluePaper.color
            self.opacity = 0.05
        case 3:
            self.id = id
            self.arcNumber = arcNumber
            self.inkColor = ThemeColor.lightYellowInk.color
            self.paperColor = ThemeColor.lightYellowPaper.color
            self.opacity = 0.05
        default:
            self.id = id
            self.arcNumber = arcNumber
            self.inkColor = ThemeColor.lightGrayInk.color
            self.paperColor = ThemeColor.lightGrayPaper.color
            self.opacity = 0.05
            
        }
    }
    
    
}

extension ArcTheme {
    static var lightSample: [ArcTheme] = [
        
        ArcTheme(arcNumber: 1, inkColor: ThemeColor.lightGreenInk.color, paperColor: ThemeColor.lightGreenPaper.color),
        ArcTheme(arcNumber: 2, inkColor: ThemeColor.lightBlueInk.color, paperColor: ThemeColor.lightBluePaper.color),
        ArcTheme(arcNumber: 3, inkColor: ThemeColor.lightYellowInk.color, paperColor: ThemeColor.lightYellowPaper.color),
        ArcTheme(arcNumber: 4, inkColor: ThemeColor.lightGrayInk.color, paperColor: ThemeColor.lightGrayPaper.color)
    ]
    
    static var darkSample: [ArcTheme] = [
        
        ArcTheme(arcNumber: 1, inkColor: ThemeColor.darkGreenInk.color, paperColor: ThemeColor.darkGreenPaper.color),
        ArcTheme(arcNumber: 2, inkColor: ThemeColor.darkBlueInk.color, paperColor: ThemeColor.darkBluePaper.color),
        ArcTheme(arcNumber: 3, inkColor: ThemeColor.darkYellowInk.color, paperColor: ThemeColor.darkYellowPaper.color),
        ArcTheme(arcNumber: 4, inkColor: ThemeColor.darkGrayInk.color, paperColor: ThemeColor.darkGrayPaper.color)
    ]
    
    static var colorSelection: [ThemeColor] = [
        ThemeColor.lightGreenInk,
        ThemeColor.lightBlueInk,
        ThemeColor.lightYellowInk,
        ThemeColor.lightGrayInk
    ]
    
}

enum ThemeColor: String, CaseIterable, Identifiable {
    
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

enum ArcThemeColor: String, CaseIterable, Identifiable {
    
    case lightGreenInk
    case lightBlueInk
    case lightYellowInk
    case lightGrayInk
    
    var inkColor: Color {
        Color(rawValue)
    }
    
    var paperColor: Color {
        let color:Color
        switch self {
        case .lightGreenInk :
            color = ThemeColor.lightGreenPaper.color
        case .lightBlueInk :
            color = ThemeColor.lightBluePaper.color
        case .lightYellowInk :
            color = ThemeColor.lightYellowPaper.color
        case .lightGrayInk :
            color = ThemeColor.lightGrayPaper.color
        }
        return color
    }
    
    var arcNumber: Int {
        let number: Int
        switch self {
        case .lightGreenInk :
            number = 3
        case .lightBlueInk :
            number = 1
        case .lightYellowInk :
            number = 4
        case .lightGrayInk :
            number = 2
        }
        return number
  
    }
    var opacity: Double {  0.05 }

    
    
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

