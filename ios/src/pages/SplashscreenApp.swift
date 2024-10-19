//
//  SplashscreenApp.swift
//  Splashscreen

import SwiftUI

@main
struct SplashscreenApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
