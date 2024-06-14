//
//  WatchListView.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-14.
//

import SwiftUI


struct WatchListView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
  
        Image("example-image")
            .resizable()
            .scaledToFit()
        
        Text("Watch List")
            .font(.title)
            .foregroundStyle(.black)
        
        
        HStack {
            
            Text("To Watch List:")
                .font(.title2)
                .padding()
            
            Spacer()
            
        }
        
        
    }
}


#Preview {
    WatchListView(isShowing: Binding.constant(true))
}
