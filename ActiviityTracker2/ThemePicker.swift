//
//  ThemePicker.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 05. 01..
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: ArcThemeColor
    
    var body: some View {
        
        Picker("", selection: $selection) {
            ForEach(ArcThemeColor.allCases) { arcThemeColor in
                
                ThemeView(arcThemeColor: arcThemeColor)
                    .tag(arcThemeColor)
            }
        }
      

    }
}

struct ThemePicker_Previews: PreviewProvider {
    
    static var previews: some View {
        ThemePicker(selection: .constant(ArcThemeColor.lightGreenInk) )
    }
}
