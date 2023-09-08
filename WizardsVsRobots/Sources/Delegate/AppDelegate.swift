//
//  AppDelegate.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 22/08/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navigationCotroller = UINavigationController()
        
        let coordinator = LobbyCoordinator()
        coordinator.navigationController = navigationCotroller
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = navigationCotroller
        window.makeKeyAndVisible()
        self.window = window
        
        coordinator.start()
        
        return true
    }

}

