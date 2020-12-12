//
//  UserViewModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit
import Firebase
protocol UserViewModelProtocol {
    var firebaseSet: FirebaseSetProtocol? { get set }
    var setUserInfoModel: UserInfoModel? { get set }
    func tapOnTheUserSettingsVc(userInfoModel: UserInfoModel)
    func userFirebaseExit(viewController: UIViewController)
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol)
}

final class UserViewModel: UserViewModelProtocol {
    var firebaseSet: FirebaseSetProtocol?
    var setUserInfoModel: UserInfoModel?
    private let router: RouterProtocol?
    init(router: RouterProtocol, firebaseSet: FirebaseSetProtocol) {
        self.router = router
        self.firebaseSet = firebaseSet
    }
    
    func tapOnTheUserSettingsVc(userInfoModel: UserInfoModel) {
        router?.showUserSettings(userInfoModel: userInfoModel)
    }
    
    //USER FAREBASE EXIT
    func userFirebaseExit(viewController: UIViewController) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let extiAction = UIAlertAction(title: "Exit", style: .destructive) { (action1) in
            do {
                try Auth.auth().signOut()
            } catch  {
                print(error)
            }
        }
        let backAction = UIAlertAction(title: "Back", style: .cancel, handler: nil)
        alert.addAction(backAction)
        alert.addAction(extiAction)
        viewController.present(alert, animated: true, completion: nil)
    }
}
