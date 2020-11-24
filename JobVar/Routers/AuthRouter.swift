//
//  AuthRouter.swift
//  JobVar
//
//  Created by Hamid Manafov on 24.11.20.
//

import UIKit

protocol AuthRouterMain {
    var choiceNavigationController: UINavigationController? { get set }
    var assemblyBuilder: AsseblyBuilderProtocol? { get set }
}

protocol AuthRouterProtocol: AuthRouterMain {
    func initialAuthViewController()
    func showLoginVc()
    func showSingUpVc()
}

class AuthRouter: AuthRouterProtocol {
    var choiceNavigationController: UINavigationController?
    var assemblyBuilder: AsseblyBuilderProtocol?
    init(choiceNavigationController: UINavigationController, assemblyBuilder: AsseblyBuilderProtocol) {
        self.choiceNavigationController = choiceNavigationController
        self.assemblyBuilder = assemblyBuilder
    }
    
    //ChoiceViewController
    func initialAuthViewController() {
        if let choiceNavigationController = choiceNavigationController {
            guard let choiceViewController = assemblyBuilder?.creatChoiceModule(authRouter: self) else { return }
            choiceNavigationController.viewControllers = [choiceViewController]
        }
    }
    
    //LogInViewController
    func showLoginVc() {
        if let choiceNavigationController = choiceNavigationController {
            guard let logInViewController = assemblyBuilder?.creatLogInModule(authRouter: self) else { return }
            choiceNavigationController.pushViewController(logInViewController, animated: true)
        }
    }
    
    //SignUpViewController
    func showSingUpVc() {
        if let choiceNavigationController = choiceNavigationController {
            guard let signUpViewController = assemblyBuilder?.creatSignUpModule(authRouter: self) else { return }
            choiceNavigationController.pushViewController(signUpViewController, animated: true)
        }
    }
}

