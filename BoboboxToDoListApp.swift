//
//  BoboboxToDoListApp.swift
//  BoboboxToDoList
//
//  Created by Cath Kasenda on 09/09/23.
//

import SwiftUI

@main
struct BoboboxToDoListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            
            let context = persistenceController.container.viewContext
            let dateHolder = DateHolder(context)
            
            TaskListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(dateHolder)
        }
    }
}
