//
//  AppDelegate.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/27/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        //style navigation bar
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColorManager.wyrePurple
        
        let attrs: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .backgroundColor: UIColorManager.wyrePurple as Any,
            .font: UIFont(name: "Gotham-Black", size: 30) as Any
        ]

        let attrsSmall: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .backgroundColor: UIColorManager.wyrePurple as Any,
            .font: UIFont(name: "Gotham-Black", size: 20) as Any
        ]
        
        appearance.largeTitleTextAttributes = attrs
        appearance.titleTextAttributes = attrsSmall
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        return true
    }



    
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

