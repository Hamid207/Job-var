//
//  CustomTabbarViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class CustomTabbarViewController: UITabBarController {

  
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = UIColor(named: "MainColor")
       // UITabBar.appearance().tintColor = UIColor(named: "Test2")
        
        //UITabBar.appearance().barTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        let vc1 = genaretaNavcontroller(vc: (viewModel?.nav)!, title: "MAinvc")
//        let vc2 = genaretaNavcontroller(vc: (viewModel?.nav2)!, title: "User")
        //viewControllers = [vc1, vc2]
    }
    
    fileprivate func genaretaNavcontroller(vc: UINavigationController, title: String) -> UINavigationController {
        let navController = UINavigationController(rootViewController: vc)
        navController.title = title
        vc.navigationItem.title = title
        return navController
    }

}
