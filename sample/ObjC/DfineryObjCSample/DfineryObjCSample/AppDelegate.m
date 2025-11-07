//
//  AppDelegate.m
//  DfineryObjCSample
//
//  Created by Jimmy.강세훈 on 10/28/25.
//

#import "AppDelegate.h"
#import <DfinerySDK/DfinerySDK.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [application registerForRemoteNotifications];

    [[UNUserNotificationCenter currentNotificationCenter] setDelegate:self];
    
    [[Dfinery shared] sdkInitWithServiceId:@"SERVICE_ID"];

    return YES;
}

#pragma mark - Push Setting

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    [[Dfinery shared] setPushTokenWithData:deviceToken];
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler
{
    if ([[Dfinery shared] canHandleNotificationWithResponse:response]) {
        completionHandler();
        return;
    }
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler
{
    if ([[Dfinery shared] canHandleForeground:notification completionHandler:completionHandler]) {
        return;
    }
}

#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
