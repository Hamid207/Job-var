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
    func showDetail(addreseumeModel: AddResumeModel)
    func showJobVacancy()
    func showCreatResume()
    func showPreciselyCreatResume(resumeModel: Kateqory?)
    func showCreatResumeTarget(resumeModel: Kateqory?, target: String?)
    func showIshAxtaranlar()
    func showFavaritesDetail(testArray: FeedResponse)
    func showUserSettings(userInfoModel: UserInfoModel)
    func showCityButtonView()
    func showMainFilterVC()
    func popVc()
    func popUser()
}

class Router: RouterProtocol {
    var naviGationController: UINavigationController?
    var userNaviGationController: UINavigationController?
    var favoritesNavigationController: UINavigationController?
    var assemblyBuilder: AsseblyBuilderProtocol?
//    init(naviGationController: UINavigationController, userNaviGationController: UINavigationController, favoritesNavigationController: UINavigationController, assemblyBuilder: AsseblyBuilderProtocol) {

    init(naviGationController: UINavigationController, userNaviGationController: UINavigationController, assemblyBuilder: AsseblyBuilderProtocol) {
        self.naviGationController = naviGationController
        self.assemblyBuilder = assemblyBuilder
        self.userNaviGationController = userNaviGationController
//        self.favoritesNavigationController = favoritesNavigationController
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
            userNavigationController.pushViewController(creatUserVC, animated: false)
        }
    }
    
    //FavoritesViewController
    func favoritesViewController() {
        if let favoritesNavigationController = favoritesNavigationController {
            guard let userViewController = assemblyBuilder?.creatFavoritesViewControllerModule(router: self) else { return }
            favoritesNavigationController.viewControllers = [userViewController]
        }
    }
    
    
    //DetailViewController
    func showDetail(addreseumeModel: AddResumeModel) {
        if let navigationController = naviGationController {
            guard let detailViewController = assemblyBuilder?.creatDetailModule(router: self, addreseumeModel: addreseumeModel ) else { return }
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
    func showPreciselyCreatResume(resumeModel: Kateqory?) {
        if let navigationController = naviGationController {
            guard let preciselyCreatResume = assemblyBuilder?.creatPreciselyCreatResumeViewControllerModule(router: self, resumeModel: resumeModel) else { return }
            navigationController.pushViewController(preciselyCreatResume, animated: true)
        }
    }
    
    //CreatResumeTargetViewController
    func showCreatResumeTarget(resumeModel: Kateqory?, target: String?) {
        if let navigationController = naviGationController {
            guard let creatResumeTarget = assemblyBuilder?.creatCreatResumeTargetViewControllerModule(router: self, resumeModel: resumeModel, target: target) else { return }
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
            guard let creatFavaritesDetail = assemblyBuilder?.creatFavaritesDetailModule(router: self, testArray: testArray) else { return }
            favoritesNavigationController.pushViewController(creatFavaritesDetail, animated: true)
        }
    }
    
    //UserSettingViewController
    func showUserSettings(userInfoModel: UserInfoModel) {
        if let userNaviGationController = userNaviGationController {
            guard let userSettingDetail = assemblyBuilder?.creatUserSettingViewControllerModule(router: self, userInfoModel: userInfoModel) else { return }
            userNaviGationController.pushViewController(userSettingDetail, animated: true)
        }
    }
    
    //CityDetailViewController
    func showCityButtonView() {
        if let navigationController = naviGationController {
            guard let cityDetail = assemblyBuilder?.creatCityDetaiLModule(router: self) else { return }
           // navigationController.present(cityDetail, animated: true, completion: nil)
            navigationController.pushViewController(cityDetail, animated: true)
        }
    }
    
    //MainFilterViewController
    func showMainFilterVC() {
        if let navigationController = naviGationController {
            guard let mainFilterVc = assemblyBuilder?.creatMainFilterModule(router: self) else { return }
            navigationController.pushViewController(mainFilterVc, animated: true)
        }
    }
    
    func popVc() {
        if let navigationController = naviGationController {
            navigationController.popViewController(animated: true)
        }
    }
    
    func popUser() {
        if let userNaviGationController = userNaviGationController {
            userNaviGationController.popViewController(animated: true)
        }
    }

    
}
