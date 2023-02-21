//
//  TheLightUIApp.swift
//  TheLightUI
//
//  Created by DIRECTOR on 31.10.2021.
//

import SwiftUI

@main
struct TheLightUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
}

class AppDelegate: NSObject, UIApplicationDelegate {
        
    static var orientationLock = UIInterfaceOrientationMask.all //By default you want all your views to rotate freely

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.orientationLock
    }
}
