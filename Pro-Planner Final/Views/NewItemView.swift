//
//  NewItemView.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-12.
//
import SwiftUI
import PhotosUI

struct NewItemView: View {
    @Binding var isShowing: Bool
    @State var selectionResult: PhotosPickerItem?
    @State var newItemImage: UploadImage?
    
    
    var body: some View {
        NavigationView {
            VStack {
                
                Text("Add a new collection")
                Text ("Add a new subcollection")
                Text ("Assign an image")
                
                PhotosPicker(selection: $selectionResult, matching: .images) {
                    
                    // Has an image been loaded?
                    if let newItemImage = newItemImage {
                        
                        // Yes, show it
                        newItemImage.image
                            .resizable()
                            .scaledToFit()
                        
                    } else {
                        
                        // No, show an icon instead
                        Image(systemName: "photo.badge.plus")
                            .symbolRenderingMode(.multicolor)
                            .font(.system(size: 30))
                            .foregroundStyle(.tint)
                        
                    }
                }
                
            }
            .navigationBarTitle("Add New Item", displayMode: .inline)
            .navigationBarItems(leading: Button("Cancel") {
                isShowing = false
            })
        }
    }
}
