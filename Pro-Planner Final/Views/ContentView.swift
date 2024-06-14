//
//  ContentView.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-12.

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                // add the search bar on the top
                HStack {
                    TextField("Search", text: .constant(""))
                        .padding(8)
                        .cornerRadius(8)
                        .background(Color(.systemGray6))
                }
            }
            .padding()
            
            // your collections title
            Text("Your Collections")
                .font(.title)
                .fontWeight(.bold)
            
            // your collections preview images for each collection
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    //each individual image and name of collection
                    CollectionCatagoryView (imageName: "example-image", title: "hello")
                    CollectionCatagoryView (imageName: "example-image", title: "darkness")
                    CollectionCatagoryView (imageName: "example-image", title: "my")
                    CollectionCatagoryView (imageName: "example-image", title: "old")
                    CollectionCatagoryView (imageName: "example-image", title: "friend")
                }
            }
            // bottom bar on the homescreen page
            BottomNavBar()
            
            // list of collections with drop down expandable sub collections
            HStack {
                Text("Your Collections")
                Spacer()
            }
            .padding(
                EdgeInsets(
                    top: 0,
                    leading: 8,
                    bottom: 16,
                    trailing: 0
                )
            )

            LazyVStack(alignment: .leading, spacing: 8) {
                //Nav link to calender
                NavigationLink("Examples Schedule", destination: CalenderView())
                
                NavigationLink("Homework/assignments example", destination: AssignmentsExampleView())
                
                ExpandableRow(title: "Example Collection 2", subItems: ["Example Subcollection 3", "Example Subcollection 4"], destination: {NewItemView(isShowing: Binding.constant(true))})
                ExpandableRow(title: "Example Collection 3", subItems: ["Example Subcollection 5", "Example Subcollection 6"], destination: {NewItemView(isShowing: Binding.constant(true))})
                ExpandableRow(title: "Sample Title", subItems: ["SubItem 1", "SubItem 2", "SubItem"], destination: {CalenderView()}
                )
                
                Text("Example Collection Page with No Subcollections")
            }
            .tint(.black)
            .padding(.horizontal, 16)
            Spacer()
        }
    }
}



#Preview {
    ContentView()
}
