//
//  RiderApp.swift
//  Rider

import SwiftUI

@main
struct RiderApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            RiderTabContainerView()
        }
    }
}
