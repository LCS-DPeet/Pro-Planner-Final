//
//  AssignmentSquaresHelper.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-13.
//

import Foundation
import SwiftUI

struct AssignmentRoundedSquares: View {
    var body: some View {
        HStack {
            ZStack {
                
                
                Rectangle()
                    .cornerRadius(20)
                    .frame(height: 200)
                    .padding(5)
                    .foregroundColor(.gray)
                
                HStack {
                    Spacer(minLength: 65)
                    
                    TextField("Title", text: .constant(""))
                        .foregroundStyle(.black)
                        .font(.title)
                        .padding(.top, -90)
                    
                }
                
                HStack {
                    
                    Spacer(minLength: 10)
                    
                    TextField("Information", text: .constant(""))
                        .foregroundStyle(.black)
                        .font(.subheadline)
                        .padding(.top, -50)
                    
                    
                }
            }
            ZStack {
                Rectangle()
                    .cornerRadius(20)
                    .frame(height: 200)
                    .padding(5)
                    .foregroundColor(.gray)
                
                HStack{
                    
                    Spacer(minLength: 65)
                    
                    TextField("Title", text: .constant(""))
                        .foregroundStyle(.black)
                        .font(.title)
                        .padding(.top, -90)
                    
                }
                HStack {
                    
                    Spacer(minLength: 10)
                    
                    TextField("Information", text: .constant(""))
                        .foregroundStyle(.black)
                        .font(.subheadline)
                        .padding(.top, -50)
                    
                    
                }
            }
        }
    }
}


#Preview {
    AssignmentRoundedSquares()
}
