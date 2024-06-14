//
//  BottomNavBar.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-13.
//

import SwiftUI

struct BottomNavBar: View {
    @State private var isShowingNewItemView = false
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "house.fill")
            Spacer()
            Image(systemName: "magnifyingglass")
            Spacer()
            Image(systemName: "bell.fill")
            Spacer()
            Button(action: {
                isShowingNewItemView = true
            }) {
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.blue)
            }
            .sheet(isPresented: $isShowingNewItemView) {
                NewItemView(isShowing: $isShowingNewItemView)
            }
            
            
            .padding()
            .background(Color(.clear))
            
            Spacer()
        }
    }
}
    #Preview {
        BottomNavBar()
    
}
