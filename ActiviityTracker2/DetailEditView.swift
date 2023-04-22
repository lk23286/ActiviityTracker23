//
//  DetailEditView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 15..
//

import SwiftUI

struct DetailEditView: View {
    
   @Binding var data: Activity.Data
    
    var body: some View {
        Text("Detail Edit View")
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView(data: .constant(Activity.Data()))
    }
}

