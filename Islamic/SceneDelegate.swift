//
//  SceneDelegate.swift
//  Islamic
//
//  Created by Aya on 10/16/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = createTabBar()
        window?.makeKeyAndVisible()
    }
    
    func createHomeVC() -> UIViewController {
        let homeStoryBoard = UIStoryboard(name: "Home", bundle: nil)
        let homeVC = homeStoryBoard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
           homeVC.title = "Home Page"
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home-1"))
        return UINavigationController(rootViewController: homeVC)
    }
    
    
    
    /*
     let fourth = fourthStroyboard.instantiateViewController(withIdentifier: "AccountNAV")
     fourth.tabBarItem = UITabBarItem(title: "My Account", image: UIImage(named: "Account"), selectedImage: UIImage(named: "Account"))
     
     */
    
    func createServicesVC() -> UIViewController {
        let servicesVC = ServicesVC()
        servicesVC.title = "Services"
        servicesVC.tabBarItem = UITabBarItem(title: "Services", image: UIImage(named: "services"), selectedImage: UIImage(named: "services-1"))
        return UINavigationController(rootViewController: servicesVC)
    }
    
    func createNotificationVC() -> UINavigationController {
        let notificationVC = NotificationsVC()
        notificationVC.title = "Notifications"
        notificationVC.tabBarItem = UITabBarItem(title: "Notifications", image: UIImage(named: "Notifications-off"), selectedImage: UIImage(named: "Notifications-off-dot"))
        return UINavigationController(rootViewController: notificationVC)
    }
    
    
    func createMoreVC() -> UINavigationController {
        let moreVC = MoreVC()
        moreVC.title = "More"
        moreVC.tabBarItem = UITabBarItem(title: "More", image: UIImage(named: "More"), selectedImage: UIImage(named: "More-1"))
        
        return UINavigationController(rootViewController: moreVC)
    }
    
    func createTabBar() -> UITabBarController {
        let tabBar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        tabBar.viewControllers = [createHomeVC(),createServicesVC(),createNotificationVC(),createMoreVC()]
        return tabBar
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

