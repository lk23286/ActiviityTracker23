//
//  MainFooterViewLine.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 12..
//

import SwiftUI

struct MainFooterViewLine: View {
    
    var activity: Activity
    
    private var name: String { activity.name }
    private var goal: String { String(activity.goal) }
    private var progress: String { String(activity.progress) }
    private var achievment: String { String(activity.achievement)}
   
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 11.0, content: {
            Text(name)
            Text(progress)
            Text("/")
            Text(goal)
            Text("hours")
            Text("\(achievment) %")
               
        }) .padding(.leading, 0.0)
            .foregroundColor(activity.arcThem.inkColor)
            .font(.headline)
            .fontWeight(.bold)
            
    }
        
}

struct MainFooterViewLine_Previews: PreviewProvider {
    
    static let activity: Activity = Activity.sample[0]
    
    
    static var previews: some View {
        MainFooterViewLine(activity: activity)
    }
}
