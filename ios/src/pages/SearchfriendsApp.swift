//
//  SearchfriendsApp.swift
//  Searchfriends

import SwiftUI

@main
struct SearchfriendsApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            SearchfriendsView()
        }
    }
}
