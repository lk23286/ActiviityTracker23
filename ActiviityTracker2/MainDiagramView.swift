//
//  MainDiagramView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 11..
//

import SwiftUI

struct MainDiagramView: View {
    
    var activities: [Activity]
    
    var body: some View {
        Circle()
            .strokeBorder(lineWidth: 0)
            .background(Color(K.backgroundGray)
            )
            .overlay {
                ForEach(activities) { activity in
                    ArcView(achivement: activity.achievement, archTheme: activity.arcThem)
                    
                }
            }
            .background(Color(K.backgroundGray))
    }
}

struct MainDiagramView_Previews: PreviewProvider {
    
    static var activities: [Activity] = Activity.darkSample
    static var arcThemes: [ArcTheme] = ArcTheme.lightSample
    
    static var previews: some View {
        MainDiagramView(activities: activities)
    }
}
