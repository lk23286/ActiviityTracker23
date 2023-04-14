//
//  MainHeaderView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 11..
//

import SwiftUI

struct MainHeaderView: View {
    
    var main: Main
     
    var body: some View {
       
 
            List {
                ForEach(main.activities) { activity in
                        Text(activity.name)
                        .font(.title2)
                            .foregroundColor(activity.arcThem.lightColor)
                            .fontWeight(.heavy)
                           
                }
                
            }
           
            

    }
      
}

struct MainHeaderView_Previews: PreviewProvider {
    
    static var main: Main = Main(activities: Activity.sample)
    
    static var previews: some View {
        MainHeaderView(main: main)
    }
}
