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
    var name: String
    var goal: Double
    var progress: Double
    var subActivities: [Activity]
    var arcThem: ArcTheme
    
    var achievement: Int {
       Int( progress / goal * 100.0 )
    }

    init(id: UUID = UUID(), name: String, goal: Double, progress: Double, subActivities: [Activity] = [], arcTheme: ArcTheme) {
        self.id = id
        self.name = name
        self.goal = goal
        self.progress = progress
        self.subActivities = subActivities
        self.arcThem = arcTheme
        
    }
}

extension Activity {
    
    struct Data {
        var name: String = ""
        var goal: Double = 0.0
        var progress: Double = 0.0
        var subActivities: [Activity] = []
        var arcThem: ArcTheme = ArcTheme.lightSample[3]
    }
    
    var data: Data {
        Data(name: name, goal: goal, progress: progress, subActivities: subActivities, arcThem: arcThem)
    }
    
    mutating func update(from data:Data) {
        name = data.name
        goal = data.goal
        progress = data.progress
        subActivities = data.subActivities
        arcThem = data.arcThem
    }
    
    init(data:Data) {
        id = UUID()
        name = data.name
        goal = data.goal
        progress = data.progress
        subActivities = data.subActivities
        arcThem = data.arcThem
    }
    
}


extension Activity {
    
    static let darkSample: [Activity] = [
        Activity(name: "Swift", goal: 300, progress: 1, subActivities: [
                    Activity(name: "Bible", goal: 60, progress: 50, arcTheme: ArcTheme.darkSample[0]),
                    Activity(name: "Project", goal: 60, progress: 20, arcTheme: ArcTheme.darkSample[1]),
                   // Activity(name: "Udemy", goal: 1.5, progress: 0.6, arcTheme: ArcTheme.darkSample[2]),
                    Activity(name: "Education", goal: 30, progress: 25, arcTheme: ArcTheme.darkSample[3])
        ], arcTheme: ArcTheme.darkSample[0]),
        Activity(name: "Sport", goal: 5, progress: 2, arcTheme: ArcTheme.darkSample[1]),
        Activity(name: "Meditation", goal: 5, progress: 3, arcTheme: ArcTheme.darkSample[2]),
    //  Activity(name: "Sleep", goal: 5, progress: 4, arcTheme: ArcTheme.darkSample[3])
    
    ]
    
    static let lightSample: [Activity] = [
        Activity(name: "Swift", goal: 300, progress: 60, subActivities: [
                    Activity(name: "Bible", goal: 60, progress: 45, arcTheme: ArcTheme.lightSample[0]),
                    Activity(name: "Project", goal: 60, progress: 20, arcTheme: ArcTheme.lightSample[1]),
                    Activity(name: "Udemy", goal: 90, progress: 50, arcTheme: ArcTheme.lightSample[2]),
                    Activity(name: "Education", goal: 30, progress: 20, arcTheme: ArcTheme.lightSample[3])
        ], arcTheme: ArcTheme.lightSample[0]),
        Activity(name: "Sport", goal: 60, progress: 15,subActivities: [
                    Activity(name: "Swim", goal: 30, progress: 23, arcTheme: ArcTheme.lightSample[0])
            ],arcTheme: ArcTheme.lightSample[1]),
        Activity(name: "Meditation", goal: 30, progress: 20, arcTheme: ArcTheme.lightSample[2]),
      // Activity(name: "Sleep", goal: 5, progress: 4, arcTheme: ArcTheme.lightSample[3])
    
    ]
    
}


