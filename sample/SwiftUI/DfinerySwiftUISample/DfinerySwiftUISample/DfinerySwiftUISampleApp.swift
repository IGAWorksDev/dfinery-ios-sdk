//
//  DfinerySwiftUISampleApp.swift
//  DfinerySwiftUISample
//
//  Created by Jimmy.강세훈 on 10/27/25.
//

import SwiftUI
import DfinerySDK

@main
struct DfinerySwiftUISampleApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    init() {
        Dfinery.shared().sdkInit(
            serviceId: "SERVICE_ID"
        )
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        application.registerForRemoteNotifications()
        UNUserNotificationCenter.current().delegate = self
        
        return true
    }
    
    //MARK: - Push setting
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        Dfinery.shared().set(pushToken: deviceToken)
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        if Dfinery.shared().canHandleNotification(response: response) {
            completionHandler()
            return
        }
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        if Dfinery.shared().canHandleForeground(notification, completionHandler: completionHandler) {
            return
        }
    }
}
