//
//  AddView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 22..
//

import SwiftUI

struct AddView: View {
    
    @Binding var data: Activity.Data

    @State var formatter = NumberFormatter()
    @State var newSubActivity = ""
   
    var body: some View {
 
        Form {
           
            Section("Main Activity") {
                HStack {
                    TextField("Activity Name", text: $data.name)
       
                }
                .font(.headline)

                
                HStack {
                    Slider(value: $data.goal, in: 0...23, step: 1) {
                        Text("Duration")
                    }
                    Text("\(Int(data.goal)) hours")
                }

            }
            Section("Sub Activites") {
                
                 let subActivities = data.subActivities 
                    
                
                 
                    ForEach(data.subActivities) { subactivity in
                        Text(subactivity.name)
                    }
                    .onDelete { indices in
                        data.subActivities.remove(atOffsets: indices)
                    }
                    if subActivities.count < 4 {
                        HStack {
                            TextField("new sub activity", text: $newSubActivity)
                            Button {
                                withAnimation {
                                    let activity = Activity.init(id: UUID(), name: newSubActivity, goal: 0.5, progress: 0, subActivities: [], arcTheme: ArcTheme(arcNumber: subActivities.count + 1))
                                    data.subActivities.append(activity)
                                    newSubActivity = ""
                                }
                            } label: {
                                Image(systemName: "plus.circle.fill")
                            }
                        }
                      

                    }
                    
                    
                
                

            }

        }

        
    }
}

struct AddView_Previews: PreviewProvider {
    
    static var previews: some View {
        AddView(data: .constant(Activity.lightSample[1
                                                    ].data))
        
    }
}
