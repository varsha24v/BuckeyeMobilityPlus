//
//  safetyApp.swift
//  safety

import SwiftUI

@main
struct safetyApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            SafetyTabContainerView()
        }
    }
}
