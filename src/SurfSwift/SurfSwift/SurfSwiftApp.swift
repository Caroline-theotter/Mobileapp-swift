//
//  SurfSwiftApp.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 06/12/2021.
//

import SwiftUI

@main
struct SurfSwiftApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
