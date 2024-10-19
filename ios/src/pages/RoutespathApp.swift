//
//  routesApp.swift
//  routes

import SwiftUI

@main
struct routesApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            RoutesTabContainerView()
        }
    }
}
