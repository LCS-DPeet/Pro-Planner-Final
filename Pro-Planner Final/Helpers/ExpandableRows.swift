//
//  ExpandableRows.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-12.
//

import SwiftUI

struct ExpandableRow<Content: View>: View {
    @State private var isExpanded = false
    
    let title: String
    let subItems: [String]?
    
    @ViewBuilder let destination: Content
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                Spacer()
                if subItems != nil {
                    Image(systemName: isExpanded ? "chevron.down" : "chevron.right")
                        .foregroundColor(.gray)
                }
            }
            .contentShape(Rectangle())
            .onTapGesture {
                if subItems != nil {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }
            }
            
            if isExpanded, let subItems = subItems {
                ForEach(subItems, id: \.self) { subItem in
                    NavigationLink(destination: destination) {
                        
                        Text(subItem)
                        
                    }
                    .padding(.leading, 16)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
