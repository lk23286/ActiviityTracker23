//
//  MainHeaderView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 11..
//

import SwiftUI

struct MainHeaderView: View {
    
    var activity: Activity
    
    
    var body: some View {
        
            Text(activity.name)
                .font(.title2)
                .foregroundColor(activity.arcThemeColor.inkColor)
                .fontWeight(.bold)

    }
    
}

struct MainHeaderView_Previews: PreviewProvider {
    
     
    static var previews: some View {
        MainHeaderView(activity: Activity.lightSample[0])
    }
}
