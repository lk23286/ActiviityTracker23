//
//  ThemeView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 05. 01..
//

import SwiftUI

struct ThemeView: View {
    
    let arcThemeColor: ArcThemeColor

    var body: some View {
       
        
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(arcThemeColor.paperColor)
            Label(arcThemeColor.name, systemImage: "paintpalette")
                .padding(4)
        }
        .foregroundColor(arcThemeColor.inkcolor)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(arcThemeColor: .lightGreenInk)
    }
}
