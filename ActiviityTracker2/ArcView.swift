//
//  ArcView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 12..
//

import SwiftUI

struct ArcView: View {
    
    var achivement: Int
    var archTheme: ArcTheme

    var body: some View {
        
        DiagramArc(number: archTheme.arcNumber, percent: 100)
            .stroke(archTheme.inkColor, lineWidth: 22)
            .brightness(0.0)
            .opacity(archTheme.opacity)
           
            .overlay {
                DiagramArc(number: archTheme.arcNumber, percent: achivement)
                    .rotation(Angle(degrees: -90))
                    .stroke(archTheme.inkColor, lineWidth: 22)
            }
    }
}

struct ArcView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let arcTheme: ArcTheme = ArcTheme.lightSample[0]
        ArcView( achivement: 30, archTheme: arcTheme)
    }
}
