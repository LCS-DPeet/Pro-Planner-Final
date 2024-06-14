//
//  AssignmentSquaresHelper.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-13.
//

import SwiftUI

struct AssignmentRoundedSquares: View {
    
    @State var one: String = ""
    @State var two: String = ""
    @State var three: String = ""
    @State var four: String = ""
    
    @State var arra = []
    
    var body: some View {
        HStack {
            ZStack {
                
                
                Rectangle()
                    .cornerRadius(20)
                    .frame(height: 200)
                    .padding(5)
                    .foregroundColor(.gray)
                
                HStack {
                    Spacer()
                    
                    TextField("Title", text: $three, axis: .vertical)
                        .foregroundStyle(.black)
                        .font(.title)
                        .padding(.top, -90)
                        .multilineTextAlignment(.center)
                    
                }
                
                HStack {
                    
                   
                    
                    TextField("Information", text: $one, axis: .vertical)
                        .lineLimit(1...100)
                        .foregroundStyle(.black)
                        .font(.subheadline)
                        .padding(.top, -50)
                        .multilineTextAlignment(.center)
                    
                    Spacer(minLength: 65)
                    
                }
            }
            ZStack {
                Rectangle()
                    .cornerRadius(20)
                    .frame(height: 200)
                    .padding(5)
                    .foregroundColor(.gray)
                    
                
                HStack{
                    
                    Spacer()
                    
                    TextField("Title", text: $four, axis: .vertical)
                        .foregroundStyle(.black)
                        .font(.title)
                        .padding(.top, -90)
                        .multilineTextAlignment(.center)
                    
                }
                HStack {
                    
                
                    
                    TextField("Information", text: $two, axis: .vertical)
                        .foregroundStyle(.black)
                        .font(.subheadline)
                        .padding(.top, -50)
                        .multilineTextAlignment(.center)
                    
                    Spacer(minLength: 65)
                    
                }
            }
        }
    }
}


#Preview {
    AssignmentRoundedSquares()
}
