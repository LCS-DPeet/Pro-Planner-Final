//
//  BottomNavBarCalender.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-13.
//

import SwiftUI

struct BottomNavBarCalender: View {
    @State private var isShowingNewItemCalenderView = false
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
                isShowingNewItemCalenderView = true
            }) {
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.blue)
            }
            .sheet(isPresented: $isShowingNewItemCalenderView) {
                NewItemCalenderView(isShowing: $isShowingNewItemCalenderView)
            }
            
            
            .padding()
            .background(Color(.clear))
            
            Spacer()
        }
    }
}
    #Preview {
        BottomNavBarCalender()
    
}

