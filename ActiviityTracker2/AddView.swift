//
//  AddView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 22..
//

import SwiftUI

struct AddView: View {
    
    @Binding var data: Activity.Data
    @State var goalHour: Double = 0
    @State var goalMinute: Double = 30
    
    var goal: Double {
        goalHour + (goalMinute / 60.0)
    }
    
    

    @State var formatter = NumberFormatter()
   
    var body: some View {
 
        Form {
           
            Section("Main Activity") {
                HStack {
                    TextField("Activity Name", text: $data.name)
                    Text(formatter.string(from: goal as NSNumber) ?? "?")
                        .onAppear {
                           formatter.maximumFractionDigits = 2
                        }
                        .onDisappear(perform: {
                            data.goal = goal
                        })
                    Text("hours")
                        
                }
                .font(.headline)

                
                HStack {
                    Slider(value: $goalHour, in: 0...23, step: 1) {
                        Text("Duration")
                    }
                    Text("\(Int(goalHour)) hours")
                }
                HStack {
                    Slider(value: $goalMinute, in: 0...59, step: 1) {
                        Text("Duration")
                    }
                    Text("\(Int(goalMinute)) minutes")
                }
            }

        }

        
    }
}

struct AddView_Previews: PreviewProvider {
    
    static var previews: some View {
        AddView(data: .constant(Activity.lightSample[0].data))
        
    }
}
