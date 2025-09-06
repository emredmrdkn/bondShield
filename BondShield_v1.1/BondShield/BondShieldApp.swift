//
//  BondShieldApp.swift
//  BondShield
//
//  Created by Emre Demirdöken on 31.08.2025.
//

import SwiftUI

@main
struct BondShieldApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
