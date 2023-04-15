//
//  SubView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 15..
//

import SwiftUI

struct SubView: View {
    
    var subActivities: [Activity]
    
    var body: some View {
        
        VStack {
            List {
                ForEach(subActivities) { activity in
                    MainHeaderView(activity: activity)
                        .listRowBackground(activity.arcThem.paperColor)
                }
            }
            MainDiagramView(activities: subActivities)
            MainFooterView(activities: subActivities)
        }
        .background(Color(K.backgroundGray))
            
    }
        
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView(subActivities: Activity.lightSample[0].subActivities!)
    }
}
