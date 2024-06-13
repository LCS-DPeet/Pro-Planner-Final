//
//  ContentView.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
        
        // list of collections with drop down expandable sub collections
        List {
            Section (header: Text("your collections")) {
                Text("Examples schedule")
                
            }
        }
        
        
        
        
        
    }
    
    
    
}

#Preview {
    ContentView()
}
