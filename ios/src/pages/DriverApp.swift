//
//  DriverApp.swift
//  Driver

import SwiftUI

@main
struct DriverApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            DriverTabContainerView()
        }
    }
}
