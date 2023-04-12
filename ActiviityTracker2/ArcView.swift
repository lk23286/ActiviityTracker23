//
//  ArcView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 12..
//

import SwiftUI

struct ArcView: View {
    
    var arcIndex: Int
    var achivement: Double
    var arcColor: Color

    
    var body: some View {
        
       DiagramArc(number: arcIndex, percent: 100)
            .stroke(arcColor, lineWidth: 30)
            .brightness(0.8)
           
            
           
            .overlay {
                DiagramArc(number: arcIndex, percent: achivement)
                    .rotation(Angle(degrees: -90))
                    .stroke(arcColor, lineWidth: 30)
                    
                
            }
    }
}

struct ArcView_Previews: PreviewProvider {
    

    
    
    static var previews: some View {
        ArcView(arcIndex: 3, achivement: 30.5, arcColor: .gray)
    }
}
