//
//  Main.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 11..
//

import Foundation
import SwiftUI

struct Main {
    var activities: [Activity]
}



enum myColor: String, CaseIterable, Identifiable {
    
    case greenLight
    case greenDark
    case blueLight
    case blueDark
    case yellowLight
    case yellowDark
    case grayLight
    case grayDark
    
    var mainColor: Color {
        Color(rawValue)
    }
    
    var name: String {
        rawValue.capitalized
    }
    var id: String {
        name
    }
    
}




