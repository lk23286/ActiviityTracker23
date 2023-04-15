//
//  MainView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 11..
//

import SwiftUI

struct MainView: View {
    
   @Binding var activities: [Activity]
    
    var body: some View {
        
        VStack {
            
            List {
                ForEach(activities) { activity in
    
                    NavigationLink(destination: SubView(subActivities: activity.subActivities ?? [])) {
        
                        MainHeaderView(activity: activity)
                    }
                    .listRowBackground(activity.arcThem.paperColor)
                }
            }

            MainDiagramView(activities: activities)
            Spacer()
            MainFooterView(activities: activities)
        }
        .background(Color(K.backgroundGray))
        .navigationTitle("Main Activity")

       
    }
        
}

struct MainView_Previews: PreviewProvider {
    
    static var main: Main = Main(activities: Activity.lightSample)
    static var previews: some View {
        NavigationView {
            MainView(activities: .constant(Activity.lightSample))
        }
        
        
        
        
      
    }
}
