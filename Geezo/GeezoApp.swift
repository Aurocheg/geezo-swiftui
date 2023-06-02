//
//  GeezoApp.swift
//  Geezo
//
//  Created by Aurocheg on 31.05.23.
//

import SwiftUI

@main
struct GeezoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
