//
//  NewItemCalenderView.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-13.
//

import SwiftUI

struct NewItemCalenderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                
                Text("Add task or appointment")
                Text ("Add a new repeating task")
                Text ("Assign an image, date, or location")
                
            }
            .navigationBarTitle("Add New Item", displayMode: .inline)
            .navigationBarItems(leading: Button("Cancel") {
                isShowing = false
            })
        }
    }
}

