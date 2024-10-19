//
//  issuereportingApp.swift
//  issuereporting

import SwiftUI

@main
struct issuereportingApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            IssuereportingTabContainerView()
        }
    }
}
