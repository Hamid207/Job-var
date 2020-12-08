//
//  SceneDelegate.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit
import Firebase
import FBSDKCoreKit

@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    
    // Swift faceboook
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) { guard let url = URLContexts.first?.url else { return }
        ApplicationDelegate.shared.application( UIApplication.shared, open: url, sourceApplication: nil, annotation: [UIApplication.OpenURLOptionsKey.annotation] )
        
    }

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        
        let navigationController = UINavigationController()
        let userNavigationController = UINavigationController()
        let favoritesNavigationController = UINavigationController()
        let choiceNavigationController = UINavigationController()
        
        let tabBarController = CustomTabbarViewController()
        let assemblyBuilder = AsseblyModelBuilder()
        
        let router = Router(naviGationController: navigationController, userNaviGationController: userNavigationController, favoritesNavigationController: favoritesNavigationController, assemblyBuilder: assemblyBuilder)
        let authRouter = AuthRouter(choiceNavigationController: choiceNavigationController, assemblyBuilder: assemblyBuilder)
        
        tabBarController.setViewControllers([navigationController, favoritesNavigationController, userNavigationController], animated: false)
        navigationController.tabBarItem = UITabBarItem(title: "Axtarış", image: UIImage(named: "magnifier"), tag: 0)
        favoritesNavigationController.tabBarItem = UITabBarItem(title: "Favoritlər", image: UIImage(named: "star"), tag: 1)
        userNavigationController.tabBarItem = UITabBarItem(title: "İstifadəçi", image: UIImage(named: "user"), tag: 2)
        
        router.initialViewController()
        authRouter.initialAuthViewController()

        Auth.auth().addStateDidChangeListener { (auth, user) in
            if user == nil {
                self.window?.rootViewController = choiceNavigationController
                tabBarController.selectedIndex = 0
            }else {
                choiceNavigationController.popViewController(animated: true)
                tabBarController.selectedIndex = 0
                self.window?.rootViewController = tabBarController
            }
        }
        
        //window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
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

