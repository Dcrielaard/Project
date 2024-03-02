//
//  ProjectDetailView.swift
//  Project
//
//  Created by Dennis Crielaard on 02/03/2024.
//

import SwiftUI

struct ProjectDetailView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var project: Project
    
    var body: some View {
        
        VStack {
            Text(project.name)
                .navigationBarBackButtonHidden(true)
            
            Button("Back") {
                dismiss()
            }
        }

    }
}

#Preview {
    ProjectDetailView(project: Project())
}
