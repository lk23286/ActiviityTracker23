//
//  ActiviityTracker2App.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 11..
//

import SwiftUI

@main
struct ActiviityTracker2App: App {
    
    var main = Main(activities: Activity.sample)
    
    var body: some Scene {
        WindowGroup {
           MainView(main: main)
        }
    }
}
