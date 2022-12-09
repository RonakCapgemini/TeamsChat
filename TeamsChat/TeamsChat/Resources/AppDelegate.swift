//
//  AppDelegate.swift
//  TeamsChat
//
//  Created by Ronak Sankhala on 07/12/22.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // Configure the UI
        let config = ChatUIConfiguration()
        config.configureUI()
        return true
    }

}

