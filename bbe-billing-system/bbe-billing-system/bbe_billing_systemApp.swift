//
//  bbe_billing_systemApp.swift
//  bbe-billing-system
//
//  Created by RUDRAKSHYA on 15/03/26.
//

import SwiftUI
import CoreData

@main
struct bbe_billing_systemApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}
