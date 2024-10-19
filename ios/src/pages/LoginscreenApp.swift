//
//  LoginscreenApp.swift
//  Loginscreen

import SwiftUI

@main
struct LoginscreenApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            LoginScreenView()
        }
    }
}
