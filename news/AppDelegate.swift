//
//  AppDelegate.swift
//  news
//
//  Created by Valeriia Shcherbakova on 05.03.2021.
//

import UIKit
@_exported import RambaHamba

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.backgroundColor = .purple
    window?.rootViewController = ViewController()
    window?.makeKeyAndVisible()
    
    return true
  }
}


