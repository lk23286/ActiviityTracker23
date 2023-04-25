//
//  SubView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 15..
//

import SwiftUI

struct SubView: View {
    
    var subActivities: [Activity]
    var mainActivity: String
    
    var body: some View {
        
        VStack {
            List {
                ForEach(subActivities) { activity in
                    
                    NavigationLink(destination: CounterView()) {
                        MainHeaderView(activity: activity)
                            
                    }
                    .listRowBackground(activity.arcThem.paperColor)
                   
                }
            }
            MainDiagramView(activities: subActivities)
            MainFooterView(activities: subActivities)
        }
        .background(Color(K.backgroundGray))
        .navigationTitle(mainActivity)
    }
        
}

struct SubView_Previews: PreviewProvider {
    
    static var exampleActivity = Activity.lightSample[0]
    
    static var previews: some View {
        
        NavigationView {
            SubView(subActivities:exampleActivity.subActivities, mainActivity: exampleActivity.name)
        }
        
        
    }
}
