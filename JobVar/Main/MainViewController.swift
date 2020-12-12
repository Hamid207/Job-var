//
//  MainViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class MainViewController: UIViewController {
    
    var mainViewModel: MainViewModelProtocol?
    
    let mainTableView = UITableView(frame: .zero, style: .plain)
    let mainCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
//        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return cv
    }()
    
    var tesarray = [FeedResponse]()
    
    var collectionVIewARRayTest = ["Elan yerləşdirin ", "Butun elanlar", "Is axtaranlar"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationItem.title = "MainViewController"
        setupView()
        mainViewModel?.firebaseSet?.currentUser(withPath: "allUsers", child: "user")
//        let aa = FeedResponse(name: "Ios devoloper Ios devoloper Ios devoloperIos devoloper", price: "300 AZN - 800 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "Hamid Manafov", odeme: .offline)
//            tesarray.append(aa)
//            let aaa = FeedResponse(name: "Ios devoloper", price: "300 AZN - 1000 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "Kapital Bank", odeme: .online)
//            tesarray.append(aaa)
//            let aaaa = FeedResponse(name: "Ios devoloper", price: "500 AZN - 150 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "MSQ", odeme: .online)
//            tesarray.append(aaaa)
        teset(test: .allUsers)
    }
    
    func teset(test: ChildEnum) {
        print("testt=====++++========---------=======-==-= \(test)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tabBarController?.tabBar.isHidden = false
        mainViewModel?.firebaseSet?.observe()
        DispatchQueue.main.async {
            self.mainViewModel?.firebaseSet?.firebaseObserve(withPath: "allUsers", child: "user")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        mainViewModel?.firebaseSet?.removeAllObserverr()
    }
}
