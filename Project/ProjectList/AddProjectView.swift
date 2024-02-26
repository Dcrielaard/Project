//
//  AddProjectView.swift
//  Project
//
//  Created by Dennis Crielaard on 31/01/2024.
//

import SwiftUI
import SwiftData

struct AddProjectView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    
    var project: Project
    @State var projectName: String = ""
    
    var body: some View {
        ZStack {
            Color.black
            
            VStack(alignment: .leading) {
                Text("New Project")
                    .font(.bigHeadline)
                    .foregroundStyle(.white)
                HStack {
                    TextField("Project Name", text: $projectName)
                        .textFieldStyle(.roundedBorder)
                    
                    Button("Save") {
                        // Save project to SwiftData
                        project.name = projectName
                        context.insert(project)
                        dismiss()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                }
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top)
        }
        .ignoresSafeArea()
    }
}
