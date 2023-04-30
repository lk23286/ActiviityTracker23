//
//  MainEdit.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 27..
//

import SwiftUI

struct MainEdit: View {
    
    @Binding var activites: [Activity]
    @State var editedData = Activity.Data()
    
    
    var body: some View {
        
        VStack {
            
            List {
                
                ForEach($activites) { $activity in
                        
                    NavigationLink(destination: AddView(data: $editedData)
                        .onAppear  {
                            editedData = activity.data
                        }
                                   
                        .navigationTitle(activity.name)
                        .toolbar(content: {
                            ToolbarItem(placement: .confirmationAction) {
                                Button("Done") {
                                    
                                }
                            }
                        
                        })
                                   
                    ) {
                        MainHeaderView(activity: activity)
                            
                        
                            
                    }
                    .listRowBackground(activity.arcThem.paperColor)
                    
                    
                }
           
                
            }
        
            .navigationTitle("Main Edit")
            .toolbar {
                Button("Done") {
                    
                }
            }
        }
    }
}

struct MainEdit_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainEdit(activites: .constant(Activity.lightSample))
        }
       
    }
}
