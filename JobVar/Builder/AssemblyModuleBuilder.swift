//
//  AssemblyModuleBuilder.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

protocol AsseblyBuilderProtocol {
    func creatMainModule(router: RouterProtocol) -> UIViewController
    func creatDetailModule(router: RouterProtocol, addreseumeModel: AddResumeModel?) -> UIViewController
    func creatJobVacanxyModule(router: RouterProtocol) -> UIViewController
    func creatCreateResumeViewControllerModlue(router: RouterProtocol) -> UIViewController
    func creatPreciselyCreatResumeViewControllerModule(router: RouterProtocol, resumeModel: Kateqory?) -> UIViewController
    func creatCreatResumeTargetViewControllerModule(router: RouterProtocol, resumeModel: Kateqory?, target: String?) -> UIViewController
    func creatIshAxtaranlarModule(router: RouterProtocol) -> UIViewController
    func creatUserViewController(router: RouterProtocol) -> UIViewController
    func creatUserSettingViewControllerModule(router: RouterProtocol, userInfoModel: UserInfoModel?) -> UIViewController
    func creatFavoritesViewControllerModule(router: RouterProtocol) -> UIViewController
    func creatFavaritesDetailModule(router: RouterProtocol, testArray: FeedResponse?) -> UIViewController
    func creatCityDetaiLModule(router: RouterProtocol) -> UIViewController
    func creatMainFilterModule(router: RouterProtocol) -> UIViewController
    
    //AUTH
    func creatChoiceModule(authRouter: AuthRouterProtocol) -> UIViewController
    func creatLogInModule(authRouter: AuthRouterProtocol) -> UIViewController
    func creatSignUpModule(authRouter: AuthRouterProtocol) -> UIViewController
}

class AsseblyModelBuilder: AsseblyBuilderProtocol {
    
    //creatMainModule
    func creatMainModule(router: RouterProtocol) -> UIViewController {
        let view = MainViewController()
        let firebaseSet = FirebaseSet()
        let mainViewModel = MainViewModel(router: router, firebaseSet: firebaseSet)
        view.mainViewModel = mainViewModel
        return view
    }
    
    //creatDetailModule
    func creatDetailModule(router: RouterProtocol, addreseumeModel: AddResumeModel?) -> UIViewController {
        let view = DetailViewController()
        let detailViewModel = DetailViewModel(router: router, addreseumeModel: addreseumeModel)
        view.detailViewModel = detailViewModel
        return view
    }
    
    //creatJobVacanxyModule
    func creatJobVacanxyModule(router: RouterProtocol) -> UIViewController {
        let view = JobVacancyViewController()
        let firebaseSet = FirebaseSet()
        let viewModel = JobVacancyViewModel(router: router, firebaseSet: firebaseSet)
        view.jobVacancyViewModel = viewModel
        return view
    }
    
    //creatCreateResumeViewControllerModlue
    func creatCreateResumeViewControllerModlue(router: RouterProtocol) -> UIViewController {
        let view = CreateResumeViewController()
        let networkService = NetworkService()
        let viewModel = CreateResumeViewModel(router: router, networkService: networkService)
        view.creatResumeViewModel = viewModel
        return view
    }
    
    //creatPreciselyCreatResumeViewControllerModule
    func creatPreciselyCreatResumeViewControllerModule(router: RouterProtocol, resumeModel: Kateqory?) -> UIViewController {
        let view = PreciselyCreatResumeViewController()
        let viewModel = PreciselyCreatResumeViewModel(router: router, resumeModel: resumeModel)
        view.viewModel = viewModel
        return view
    }
    
    //creatCreatResumeTargetViewControllerModule
    func creatCreatResumeTargetViewControllerModule(router: RouterProtocol, resumeModel: Kateqory?, target: String?) -> UIViewController {
        let view = CreatResumeTargetViewController()
        let firebaseSet = FirebaseSet()
        let setDaata = SetData()
        let viewModel = CreatResumeTargetViewModel(router: router, firebaseSet: firebaseSet, setData: setDaata, resumeModel: resumeModel, target: target)
        view.viewModel = viewModel
        return view
    }
    
    //creatIshAxtaranlarModule
    func creatIshAxtaranlarModule(router: RouterProtocol) -> UIViewController {
        let view = IshAxtaranlarViewController()
        let viewModel = IshAxtaranlarViewModel(router: router)
        view.viewModel = viewModel
        return view
    }
    
    //creatUserViewControllerModeule
    func creatUserViewController(router: RouterProtocol) -> UIViewController {
        let view = UserViewController()
        let firebaseSet = FirebaseSet()
        let viewModel = UserViewModel(router: router, firebaseSet: firebaseSet)
        view.viewModel = viewModel
        return view
    }
    
    //creatUserSettingViewControllerModule
    func creatUserSettingViewControllerModule(router: RouterProtocol, userInfoModel: UserInfoModel?) -> UIViewController {
        let view = UserSettingViewController()
        let firebaseSet = FirebaseSet()
        let viewModel = UserSettingViewModel(router: router, firebaseSet: firebaseSet, userInfoModel: userInfoModel)
        view.viewModel = viewModel
        return view
    }
    
    //creatFavoritesViewControllerModeule
    func creatFavoritesViewControllerModule(router: RouterProtocol) -> UIViewController {
        let view = FavoritesViewController()
        let viewModel = FavoritesViewModel(router: router)
        view.viewModel = viewModel
        return view
    }
    
    //creatFavaritesDetailModeule
    func creatFavaritesDetailModule(router: RouterProtocol, testArray: FeedResponse?) -> UIViewController {
        let view = FavoritesDetailViewController()
        let viewModel = FavoritesDetailViewModel(router: router, testArray: testArray)
        view.viewModel = viewModel
        return view
    }
    
    func creatCityDetaiLModule(router: RouterProtocol) -> UIViewController {
        let view = CityViewController()
        return view
    }
    
    
    //MARK: - AUTH
    //creatChoiceModule
    func creatChoiceModule(authRouter: AuthRouterProtocol) -> UIViewController {
        let view = ChoiceViewController()
        let viewModel = ChoiceViewModel(router: authRouter)
        view.viewModel = viewModel
        return view
    }
    //creatLogInModule
    func creatLogInModule(authRouter: AuthRouterProtocol) -> UIViewController {
        let view = LogInViewController()
        let firebaseAuth = FirebaseSetAuth()
        let viewModel = LogInViewModel(router: authRouter, firebaseSet: firebaseAuth)
        view.viewModel = viewModel
        return view
    }
    
    //creatSignUp
    func creatSignUpModule(authRouter: AuthRouterProtocol) -> UIViewController {
        let view = SignUpViewController()
        let firebaseAuth = FirebaseSetAuth()
        let viewModel = SignUpViewModel(router: authRouter, firebaseSet: firebaseAuth)
        view.viewModel = viewModel
        return view
    }
    
    //creatMainFilterModule
    func creatMainFilterModule(router: RouterProtocol) -> UIViewController {
        let view = MainFilterViewController()
        let fireBaseSet = FirebaseSet()
        let viewModel = MainFilterViewModel(router: router, firebaseSet: fireBaseSet)
        view.viewModel = viewModel
        return view
    }

}
