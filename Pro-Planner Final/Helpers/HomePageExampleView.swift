//
//  HomePageExampleView.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-14.
//

import SwiftUI

struct HomePageExampleView: View {
    var body: some View {
        NavigationStack {
            
            
            //example collection image
            Image("example-image")
                .resizable()
                .scaledToFit()
            
            
            //text stating "your home page"
            Text("Your Home Page")
                .font(.title)
                .fontWeight(.bold)
            
            // list of items on your home page
    
            LazyVStack(alignment: .leading, spacing: 8) {
                
                //Nav link to calender
                
                ExpandableRow(title: "Watch List Example", subItems: ["Movies", "Tv Shows"], destination: {WatchListView(isShowing: Binding.constant(true))})
                
                ExpandableRow(title: "Recipes List Example", subItems: ["Non Cooking Recipes", "Favorite Recipes"], destination: {RecipesListExampleView(isShowing: Binding.constant(true))})
                
                
                
            }
            .tint(.black)
            .padding(.horizontal, 16)
            Spacer()
            
            
            
        }
    }
}

#Preview {
    HomePageExampleView()
}
