//
//  CounterView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 15..
//

import SwiftUI

struct CounterView: View {
    var body: some View {
        
        
        Text("CounterView")
            .navigationTitle("Counter")
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            CounterView()
        }
        
        
      
    }
}
