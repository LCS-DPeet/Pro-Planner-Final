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
            List {
                
                //Nav link to Movie watch list
                NavigationLink("Movie Watch List", destination: WatchListView())
                
                //nav link to recipies page
                NavigationLink("Recipes", destination: RecipesListExampleView())
                
                ExpandableRow(title: "Travel Plans", subItems: ["Silent Lake Trip", "Canadas Wonderland", "Greece Trip", "July Trip"])
                ExpandableRow(title: "Example Collection 3", subItems: ["Example Subcollection 5", "Example Subcollection 6"])
                
                Text("Example Collection Page with No Subcollections")
                
            }
            
            
            
        }
    }
}

#Preview {
    HomePageExampleView()
}
