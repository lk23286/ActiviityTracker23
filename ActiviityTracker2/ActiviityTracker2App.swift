//
//  ActiviityTracker2App.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 11..
//

import SwiftUI

@main
struct ActiviityTracker2App: App {
    
    @State private var activities = Activity.lightSample
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MainView(activities: $activities)
            }
          
        }
    }
}
