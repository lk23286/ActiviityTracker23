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
            .strokeBorder(lineWidth: 1)
        
            .overlay {
                ForEach(activities) { activity in
                    ArcView(arcIndex: activity.arcIndex, achivement: activity.achievement, arcColor: activity.color ?? .black)
                    
                   
                }

            }
        
        
        
        

    }
}

struct MainDiagramView_Previews: PreviewProvider {
    
    static var activities: [Activity] = Activity.sample
    
    static var previews: some View {
        MainDiagramView(activities: activities)
    }
}
