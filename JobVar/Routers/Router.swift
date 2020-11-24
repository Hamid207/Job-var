//
//  Router.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

protocol RouterMain {
    var naviGationController: UINavigationController? { get set }
    var userNaviGationController: UINavigationController? { get set }
    var favoritesNavigationController: UINavigationController? { get set}
    var assemblyBuilder: AsseblyBuilderProtocol? { get set }
}

protocol RouterProtocol: RouterMain {
    func initialViewController()
    func userInitialViewController()
    func favoritesViewController()
    func showDetail(testArray: FeedResponse)
    func showJobVacancy()
    func showCreatResume()
    func showPreciselyCreatResume()
    func showCreatResumeTarget()
    func showIshAxtaranlar()
    func showFavaritesDetail(testArray: FeedResponse)
    func showUserSettings()
}

class Router: RouterProtocol {
    var naviGationController: UINavigationController?
    var userNaviGationController: UINavigationController?
    var favoritesNavigationController: UINavigationController?
    var assemblyBuilder: AsseblyBuilderProtocol?
    init(naviGationController: UINavigationController, userNaviGationController: UINavigationController, favoritesNavigationController: UINavigationController, assemblyBuilder: AsseblyBuilderProtocol) {
        self.naviGationController = naviGationController
        self.assemblyBuilder = assemblyBuilder
        self.userNaviGationController = userNaviGationController
        self.favoritesNavigationController = favoritesNavigationController
    }
    
    //MainViewController
    func initialViewController() {
        if let navigationController = naviGationController {
            guard let mainViewController = assemblyBuilder?.creatMainModule(router: self) else { return }
            navigationController.viewControllers = [mainViewController]
        }
        favoritesViewController()
        userInitialViewController()
    }
    
    //UserViewController
    func userInitialViewController() {
        if let userNavigationController = userNaviGationController {
            guard let creatUserVC = assemblyBuilder?.creatUserViewController(router: self) else { return }
            userNavigationController.viewControllers = [creatUserVC]
        }
    }
    
    //FavoritesViewController
    func favoritesViewController() {
        if let favoritesNavigationController = favoritesNavigationController {
            guard let userViewController = assemblyBuilder?.creatFavoritesViewControllerModeule(router: self) else { return }
            favoritesNavigationController.viewControllers = [userViewController]
        }
    }
    
    
    //DetailViewController
    func showDetail(testArray: FeedResponse) {
        if let navigationController = naviGationController {
            guard let detailViewController = assemblyBuilder?.creatDetailModule(router: self, testArray: testArray) else { return }
            navigationController.pushViewController(detailViewController, animated: true)
        }
    }
    
    //JobVacancyViewController
    func showJobVacancy() {
        if let navigationController = naviGationController {
            guard let jobVC = assemblyBuilder?.creatJobVacanxyModule(router: self) else { return }
            navigationController.pushViewController(jobVC, animated: true)
        }
    }
    
    //CreateResumeViewController
    func showCreatResume() {
        if let navigationController = naviGationController {
            guard let preciselyCreatResume = assemblyBuilder?.creatCreateResumeViewControllerModlue(router: self) else { return }
            navigationController.pushViewController(preciselyCreatResume, animated: true)
        }
    }
    
    //PreciselyCreatResumeViewController
    func showPreciselyCreatResume() {
        if let navigationController = naviGationController {
            guard let preciselyCreatResume = assemblyBuilder?.creatPreciselyCreatResumeViewControllerModule(router: self) else { return }
            navigationController.pushViewController(preciselyCreatResume, animated: true)
        }
    }
    
    //CreatResumeTargetViewController
    func showCreatResumeTarget() {
        if let navigationController = naviGationController {
            guard let creatResumeTarget = assemblyBuilder?.creatCreatResumeTargetViewControllerModule(router: self) else { return }
            navigationController.pushViewController(creatResumeTarget, animated: true)
        }
    }
    
    //IshAxtaranlarViewController
    func showIshAxtaranlar() {
        if let navigationController = naviGationController {
            guard let creatIshAxtaranlar = assemblyBuilder?.creatIshAxtaranlarModule(router: self) else { return }
            navigationController.pushViewController(creatIshAxtaranlar, animated: true)
        }
    }
    
    //FavoritesDetailViewController
    func showFavaritesDetail(testArray: FeedResponse) {
        if let favoritesNavigationController = favoritesNavigationController {
            guard let creatFavaritesDetail = assemblyBuilder?.creatFavaritesDetailModeule(router: self, testArray: testArray) else { return }
            favoritesNavigationController.pushViewController(creatFavaritesDetail, animated: true)
        }
    }
    
    //UserSettingViewController
    func showUserSettings() {
        if let userNaviGationController = userNaviGationController {
            guard let userSettingDetail = assemblyBuilder?.creatUserSettingViewControllerModule(router: self) else { return }
            userNaviGationController.pushViewController(userSettingDetail, animated: true)
        }
    }
    
}
