//
//  K_LearnApp.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI
import Firebase

@main

struct KLearnApp: App {
    @StateObject private var streakCount = StreakCount()
    @StateObject var viewModel = AuthViewModel()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environmentObject(AuthViewModel())
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(StreakCount())
                .environmentObject(TimerViewModel.shared)
        }
    }
}
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        print("Configured firebase!")
        return true
    }
}
