//
//  MainView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 11..
//

import SwiftUI

struct MainView: View {
    
    @Binding var activities: [Activity]
    @State private var editedActivites: [Activity] = []
    
    @State private var newActivityData = Activity.Data()
    @State private var isPresentingNewActivity = false
    @State private var isPresentingEditActivity = false
    @State private var errorWrapper = ErrorWrapper.basicErrors[0]
   
    
    
    
    var body: some View {
        
        VStack {
            
            List {
                ForEach($activities) { $activity in
                    
                   
                    if !activity.subActivities.isEmpty {
                       
                        NavigationLink(destination: SubView(subActivities: activity.subActivities, mainActivityName: activity.name)) {
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
                            editedActivites = activities
                        } label: {
                            Text("Edit")
                        }
                        
                    }
                    
                }
                .sheet(isPresented: $isPresentingNewActivity) {
                   
                        if activities.count < 4 {
                            
                            NavigationView {
                                AddView(data: $newActivityData)
                                    .toolbar {
                                        ToolbarItem(placement: .cancellationAction) {
                                            Button("Dismiss") {
                                                isPresentingNewActivity = false
                                            }
                                        }
                                        ToolbarItem(placement: .confirmationAction) {
                                            Button("Add") {
                                                isPresentingNewActivity = false
                                                let newActivity = Activity(data: newActivityData)
                                                activities.append(newActivity)
                                                newActivityData = Activity.Data()
                                                
                                                
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
                        MainEdit(activites: $editedActivites)
                            .toolbar {
                                ToolbarItem(placement: .cancellationAction) {
                                    Button("Dismiss") {
                                        isPresentingEditActivity = false
                                    }
                                }
                                ToolbarItem(placement: .confirmationAction) {
                                    Button("Save") {
                                        isPresentingEditActivity = false
                                        activities = editedActivites
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
