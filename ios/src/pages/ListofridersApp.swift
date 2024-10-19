//
//  ListofridersApp.swift
//  Listofriders

import SwiftUI

@main
struct ListofridersApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ListofRidersView()
        }
    }
}
