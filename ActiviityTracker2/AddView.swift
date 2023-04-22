//
//  AddView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 22..
//

import SwiftUI

struct AddView: View {
    
    @Binding var data: Activity.Data
    
    var body: some View {
        Text("Add View")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(data: .constant(Activity.Data()))
    }
}
