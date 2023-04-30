//
//  DetailEditView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 15..
//

import SwiftUI

struct DetailEditView: View {
    
    @Binding var activity: Activity
    
    var body: some View {
        
        List {
            
            Section("Activity") {
                
                VStack {
                    Text(activity.name)
                 
                }
               
            }
            
        
            
        }
        
        
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView(activity: .constant(Activity.lightSample[0]))
    }
}

