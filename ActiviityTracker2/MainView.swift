//
//  MainView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 11..
//

import SwiftUI

struct MainView: View {
    
   var main: Main
    
    var body: some View {
        
        VStack {
            MainHeaderView(main: main)
            Spacer()
            MainDiagramView(activities: main.activities)
            Spacer()
            MainFooterView(activities: main.activities)
        }
       
    }
        
}

struct MainView_Previews: PreviewProvider {
    
    static var main: Main = Main(activities: Activity.sample)
    static var previews: some View {
        MainView(main: main)
    }
}
