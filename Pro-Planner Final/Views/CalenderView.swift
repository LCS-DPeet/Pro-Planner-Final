//
//  CalenderView.swift
//  Pro-Planner Final
//
//  Created by Danika Peet on 2024-06-13.
//

import SwiftUI

struct CalenderView: View {
    var body: some View {
        VStack {
            
            //collection header image
            Image("example-image")
                .resizable()
                .scaledToFit()
            
            //header text
            Text("Example schedule")
                .font(.title)
                .fontWeight(.bold)
            
            
            HStack {
                
                // header for the calender
                Text("June 2024")
                    .font(.headline)
                
                Spacer()
                
                Text("< Todays Date >")
                    .font(.headline)
                    .foregroundColor(.blue)
                
            }
            .padding()
            
            //calender grid from chatgpt:
            
            VStack(spacing: 2) {
                // Days of the week
                HStack {
                    ForEach(["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], id: \.self) { day in
                        Text(day)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity)
                    }
                }
                
                // Calendar Dates
                ForEach(0..<5) { week in
                    HStack(spacing: 2) {
                        ForEach(0..<7) { day in
                            Text("\(week * 7 + day)")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(week == 2 && day == 1 ? Color.pink.opacity(0.2) : Color.clear)
                                .cornerRadius(8)
                        }
                    }
                }
            }
            .padding()
            Spacer()
            
            HStack{
                BottomNavBar()
            }
        }
    }
}

#Preview {
    CalenderView()
}
