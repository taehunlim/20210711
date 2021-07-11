//
//  AppDelegate.swift
//  20210711
//
//  Created by FIFTEEN H on 2021/07/11.
//

import UIKit

// 추상화
@main

// App 
class AppDelegate: UIResponder, UIApplicationDelegate {

    //     App life cycle

    // app이 최초 실행된 직후
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        print("didFinishLaunchingWithOptions")
        
        // Override point for customization after application launch.
        return true
    }
    
    
    // app이 active 상태로된 직후
//    func applicationDidBecomeActive(_ application: UIApplication) {
//        print("applicationDidBecomeActive")
//    }
//
//    // app이 inactive 상태로 전환되기 직전
//    func applicationWillResignActive(_ application: UIApplication) {
//        print("applicationWillResignActive")
//    }
//
//    // app이 배그라운드 상태로 전환되기 직전
//    func applicationDidEnterBackground(_ application: UIApplication) {
//        print("applicationDidEnterBackground")
//    }
//
//    // app이 active 상태가 되기 직전 && 화면에 보여지기 직전
//    func applicationWillEnterForeground(_ application: UIApplication) {
//        print("applicationWillEnterForeground")
//    }
//
//    // app이 종료되기 직전
//    func applicationWillTerminate(_ application: UIApplication) {
//        print("applicationWillTerminate")
//    }


    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

