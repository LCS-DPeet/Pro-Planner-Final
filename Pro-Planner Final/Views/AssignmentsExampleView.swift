//
//  AssignmentsExampleView.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-13.
//

import SwiftUI

struct AssignmentsExampleView: View {
    var body: some View {
        
        Image("example-image")
            .resizable()
            .scaledToFit()
        
        Text("Assignments")
            .font(.title)
            .fontWeight(.bold)
        
        Spacer()
        
        // your collections preview images for each collection
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
            AssignmentRoundedSquares()
            AssignmentRoundedSquares()
            AssignmentRoundedSquares()
            AssignmentRoundedSquares()
            }
            Spacer()
            
        }
    }
}
#Preview {
    AssignmentsExampleView()
}
