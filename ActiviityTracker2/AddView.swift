//
//  AddView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 22..
//

import SwiftUI

struct AddView: View {
    
    @Binding var data: Activity.Data
    
    @State var newSubActivity = ""
    @State var newSubActivityGoal = 30.0
    @State var newSubActivityColor: ArcThemeColor = .lightGrayInk
    
    
    var body: some View {
        
        Form {
            
            Section("Main Activity") {
                HStack {
                    TextField("Activity Name", text: $data.name)
                }
                .font(.headline)
                .foregroundColor(data.arcThemeColor.inkColor)
                
                HStack {
                    Slider(value: $data.goal, in: 0...(23 * 60), step: 1) {
                        Text("Duration")
                    }
                    Text("\(Int(data.goal)) min")
                }
                ThemePicker(selection: $data.arcThemeColor)
            }
            
                Section("Sub Activites") {
                    ForEach(data.subActivities) { subactivity in
                        
                        HStack {
                            Text(subactivity.name)
                            Text(" \(Int(subactivity.goal)) min")
                        }
                        .listRowBackground(subactivity.arcThemeColor.paperColor)
                        .foregroundColor(subactivity.arcThemeColor.inkColor)
                    }
                    .onDelete { indices in
                        data.subActivities.remove(atOffsets: indices)
                    }
                    if data.subActivities.count < 4 {
                        HStack {
                            TextField("new sub activity", text: $newSubActivity)
                            Button {
                                withAnimation {
                                    let activity = Activity.init(id: UUID(), name: newSubActivity, goal: newSubActivityGoal, progress: 0, subActivities: [], arcTheme: newSubActivityColor )
                                    data.subActivities.append(activity)
                                    newSubActivity = ""
                                }
                            } label: {
                                Image(systemName: "plus.circle.fill")
                            }
                        }
                    }
                }
            
            Section("Sub activitiy duration") {
                
                HStack {
                    Slider(value: $newSubActivityGoal, in: 0...data.goal + 1, step: 1) {
                        Text("Duration")
                    }
                    Text("\(Int(newSubActivityGoal)) min")
                }
                ThemePicker(selection: $newSubActivityColor)
            }

            }

            }
        }


struct AddView_Previews: PreviewProvider {
    
    static var previews: some View {
        AddView(data: .constant(Activity.lightSample[1].data))
        
    }
}
