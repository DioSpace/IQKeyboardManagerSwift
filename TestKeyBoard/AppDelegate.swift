//
//  AppDelegate.swift
//  TestKeyBoard
//
//  Created by Geek on 2020/1/1.
//  Copyright © 2020 myself. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        self.window?.makeKeyAndVisible()
        let homeVC = HomeViewController.init(nibName: "HomeViewController", bundle: nil)
        let nav = UINavigationController.init(rootViewController: homeVC)
        self.window?.rootViewController = nav
        return true
    }
    
}

