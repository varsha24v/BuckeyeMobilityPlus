//
//  ProfileeditApp.swift
//  Profileedit

import SwiftUI

@main
struct ProfileeditApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ProfileEditView()
        }
    }
}
