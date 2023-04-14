//
//  Activtiy.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 12..
//

import Foundation
import SwiftUI

struct Activity: Identifiable {
    
    let id: UUID
    let name: String
    let goal: Double
    let progress: Double
    let subActivities: [Activity]?
    let arcThem: ArcTheme
    
    var achievement: Int {
       Int( progress / goal * 100.0 )
    }

    init(id: UUID = UUID(), name: String, goal: Double, progress: Double, subActivities: [Activity]? = nil, arcTheme: ArcTheme) {
        self.id = id
        self.name = name
        self.goal = goal
        self.progress = progress
        self.subActivities = subActivities
        self.arcThem = arcTheme
        
    }
}

extension Activity {
    
    static let sample: [Activity] = [
        Activity(name: "Swift", goal: 5, progress: 1, subActivities: [
                    Activity(name: "Bible", goal: 1, progress: 0.7, arcTheme: ArcTheme.sample[0]),
                    Activity(name: "Project", goal: 1, progress: 0.3, arcTheme: ArcTheme.sample[1]),
                    Activity(name: "Udemy", goal: 1.5, progress: 0.6, arcTheme: ArcTheme.sample[2]),
                    Activity(name: "Education", goal: 0.5, progress: 0.8, arcTheme: ArcTheme.sample[3])
        ], arcTheme: ArcTheme.sample[0]),
        Activity(name: "Sport", goal: 5, progress: 2, arcTheme: ArcTheme.sample[1]),
        Activity(name: "Meditation", goal: 5, progress: 3, arcTheme: ArcTheme.sample[2]),
        Activity(name: "Sleep", goal: 5, progress: 4, arcTheme: ArcTheme.sample[3])
    
    ]
    
}


