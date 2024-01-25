//
//  ContentView.swift
//  Project
//
//  Created by Dennis Crielaard on 23/01/2024.
//

import SwiftUI

struct ProjectListView: View {
    var body: some View {
        VStack {
            Image("cross")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.screenHeading)
                .foregroundStyle(Color("Teal"))
        }
        .padding()
    }
}

#Preview {
    ProjectListView()
}
