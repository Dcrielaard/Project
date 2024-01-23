//
//  ProjectApp.swift
//  Project
//
//  Created by Dennis Crielaard on 23/01/2024.
//

import SwiftUI
import SwiftData

@main
struct ProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ProjectListView()
                .modelContainer(for: [Project.self, ProjectUpdate.self])
        }
    }
}
