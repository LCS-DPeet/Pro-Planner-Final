//
//  TravelPlansExampleView.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-14.
//

import SwiftUI

struct TravelPlansExampleView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TravelPlansExampleView(isShowing: Binding.constant(true))
}
