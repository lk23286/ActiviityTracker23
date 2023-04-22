//
//  MainView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 11..
//

import SwiftUI

struct MainView: View {
    
    @Binding var activities: [Activity]
    
    @State private var data = Activity.Data()
    @State private var isPresentingNewActivity = false
    @State private var isPresentingEditActivity = false
    @State private var errorWrapper = ErrorWrapper.basicErrors[0]
    
    
    var body: some View {
        
        VStack {
            
            List {
                ForEach(activities) { activity in
                    
                    if let subActivities = activity.subActivities {
                        
                        NavigationLink(destination: SubView(subActivities: subActivities, mainActivity: activity.name)) {
                            MainHeaderView(activity: activity)
                        }
                        .listRowBackground(activity.arcThem.paperColor)
                    } else {
                        NavigationLink(destination: CounterView()) {
                            MainHeaderView(activity: activity)
                        }
                        .listRowBackground(activity.arcThem.paperColor)
                        
                    }
                    
                }
            }
            
            MainDiagramView(activities: activities)
            Spacer()
            
            MainFooterView(activities: activities)
            
                .background(Color(K.backgroundGray))
                .navigationTitle("Main Activities")
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button {
                            isPresentingNewActivity = true
                        } label: {
                            Image(systemName: "plus")
                        }
                        
                    }
                    ToolbarItem(placement: .cancellationAction) {
                        Button {
                            isPresentingEditActivity = true
                        } label: {
                            Text("Edit")
                        }
                        
                    }
                    
                }
                .sheet(isPresented: $isPresentingNewActivity) {
                   
                        if activities.count < 4 {
                            
                            NavigationView {
                                AddView(data: $data)
                                    .toolbar {
                                        ToolbarItem(placement: .cancellationAction) {
                                            Button("Dismiss") {
                                                isPresentingNewActivity = false
                                            }
                                        }
                                        ToolbarItem(placement: .confirmationAction) {
                                            Button("Done") {
                                                isPresentingNewActivity = false
                                            }
                                        }
                                    }
                            }
                            

                        }
                        else {
                            ErrorView(errorWrapper: errorWrapper)

                        }
                        

                    
                }
                .sheet(isPresented: $isPresentingEditActivity) {
                    NavigationView {
                        DetailEditView(data: $data)
                            .toolbar {
                                ToolbarItem(placement: .cancellationAction) {
                                    Button("Dismiss") {
                                        isPresentingEditActivity = false
                                    }
                                }
                                ToolbarItem(placement: .confirmationAction) {
                                    Button("Done") {
                                        isPresentingEditActivity = false
                                    }
                                }
                            }
                    }
                }
        }
    }
    
}

struct MainView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView {
            MainView(activities: .constant(Activity.lightSample))
        }
        
        
        
        
        
    }
}
