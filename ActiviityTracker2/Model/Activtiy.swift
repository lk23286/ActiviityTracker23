//
//  Activtiy.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 12..
//

import Foundation
import SwiftUI

struct Activity: Identifiable {
    
    var id: UUID
    var name: String
    var goal: Double
    var progress: Double
    var subActivities: [Activity]?
    var color: Color?
    var arcIndex: Int
    
    
    var achievement: Double {
        progress / goal * 100.0
    }

    init(id: UUID = UUID(), name: String, goal: Double, progress: Double, subActivities: [Activity]? = nil, color: Color? = nil, arcIndex: Int) {
        self.id = id
        self.name = name
        self.goal = goal
        self.progress = progress
        self.subActivities = subActivities
        self.color = color
        self.arcIndex = arcIndex
        
    }
    
    
}

extension Activity {
    static let sample: [Activity] = [
        Activity( name: "Swift", goal: 3.0, progress: 0.6, subActivities: [
            Activity(name: "Bible", goal: 0.5, progress: 0.2, arcIndex: 1),
            Activity(name: "Project", goal: 1.0, progress: 0.6, arcIndex: 2),
            Activity(name: "Udemy", goal: 0.2, progress: 0.1, arcIndex: 3),
            Activity(name: "Education", goal: 1.0, progress: 0.4, arcIndex: 4)
        ], color: .green, arcIndex: 1),
        Activity(name: "Sport", goal: 0.5, progress: 0.8, color: .blue, arcIndex: 2),
        Activity(name: "Mediation", goal: 0.5, progress: 0.4, color: .yellow, arcIndex: 3),
        Activity(name: "Sleep", goal: 8, progress: 6, color: .gray, arcIndex: 4)
      ]
}


