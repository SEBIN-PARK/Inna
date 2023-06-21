//
//  innaApp.swift
//  inna
//
//  Created by Sebin Park on 2023/06/07.
//

import SwiftUI

@main
struct innaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
