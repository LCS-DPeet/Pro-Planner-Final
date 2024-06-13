//
//  CollectionCatagoryView.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-12.
//

import Foundation
import SwiftUI

struct CollectionCatagoryView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(8)
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
    }
}

struct CollectionCatagoryView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCatagoryView(imageName: "example-image", title: "Example Title")
    }
}
