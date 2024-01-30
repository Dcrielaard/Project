//
//  ContentView.swift
//  Project
//
//  Created by Dennis Crielaard on 23/01/2024.
//

import SwiftUI

struct ProjectListView: View {
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [Color.deepPurple, Color.blushPink], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                Text("Projects")
                    .font(.screenHeading)
                    .foregroundStyle(Color.white)
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 26) {
                        ProjectCardView()
                        ProjectCardView()
                        ProjectCardView()

                        
                    }
                    
                }

            }
            .padding()
            
            VStack {
                Spacer()
                
                HStack {
                    Button(action: {
                        // TODO
                    }, label: {
                        ZStack {
                            Circle()
                                .frame(width: 65)
                                .foregroundColor(.black)
                            Image("cross")
                        }
                    })
                    Spacer()
                }
                
            }
            .padding(.leading)
        }
    }
}

#Preview {
    ProjectListView()
}
