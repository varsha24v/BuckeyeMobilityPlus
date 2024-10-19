//
//  CarpoolpageApp.swift
//  Carpoolpage

import SwiftUI

@main
struct CarpoolpageApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            CarpoolpageView()
        }
    }
}
