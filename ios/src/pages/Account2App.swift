//
//  Account2App.swift
//  Account2

import SwiftUI

@main
struct Account2App: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            AccountView()
        }
    }
}
