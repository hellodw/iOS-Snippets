//
//  AppDelegate.swift
//  snippets
//
//  Created by Maverick b on 2021/02/27.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        guard let window = self.window else {
            return false
        }
        
        let vc = MainViewController()
        window.rootViewController = vc
        
        DispatchQueue.main.async {
            UIView.transition(with: window, duration: 0.3, options: .transitionCrossDissolve, animations: {
                window.makeKeyAndVisible()
            })
        }
        
        return true
    }
}
