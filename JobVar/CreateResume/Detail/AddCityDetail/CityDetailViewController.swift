////
////  CityDetailViewController.swift
////  JobVar
////
////  Created by Hamid Manafov on 17.12.20.
////
//
//import UIKit
//
//protocol CityNameTest {
//    var name: String? { get set }
//}
//
//class CityDetailViewController: UIViewController, CityNameTest {
//    var name: String?
//    
//    var viewModel: CityDetilViewModelProtocol?
//    let tableView = UITableView(frame: .zero, style: .plain)
//    var setName: ((String) -> ())?
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        setupNavigationBar()
//        itemSetup()
//        DispatchQueue.main.async {
//            self.tableView.reloadData()
//        }
//        
//    }
//    
//}
