//
//  PrimeMinistersApp.swift
//  PrimeMinisters
//
//  Created by Pavankumar Arepu on 24/06/23.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        _ = FirebaseRemoteConfigManager.shared
        return true
    }
}


/// Main Class - Entrance of the application
@main
struct PrimeMinistersApp: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @State private var appLaunched = false
    
    var body: some Scene {
        WindowGroup {
            if appLaunched {
                // Your main app view
                ContentView()
            } else {
                // Show the splash screen
                SplashView()
                    .onAppear {
                        // Simulate a delay or any necessary operations before transitioning to the main app view
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            appLaunched = true
                        }
                    }
            }
        }
    }
}
