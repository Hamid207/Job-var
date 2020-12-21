//
//  JobVacancyViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class JobVacancyViewController: UIViewController { //Is axtarmaq yeni butun elanlar
    
    var jobVacancyViewModel: JobVacancyViewModelProtocol?
    
    let jobVacancyTableView = UITableView(frame: .zero, style: .plain)
    let refresh = UIRefreshControl()
    var tesarray = [FeedResponse]()
    private let searchControl = UISearchController(searchResultsController: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationItem.title = "JobVacancyViewController"
        setupNavigationBar()
        setupITem()
        searchControl.obscuresBackgroundDuringPresentation = false
        searchControl.searchBar.placeholder = "Search"
        navigationItem.searchController = searchControl
        definesPresentationContext = true
        DispatchQueue.main.async {
            self.jobVacancyTableView.reloadData()
        }
//        let aa = FeedResponse(name: "Ios devoloper Ios devolope", price: "300 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "Hamid Manafov", odeme: .offline)
//        tesarray.append(aa)
//        let aaa = FeedResponse(name: "Ios devoloper", price: "300 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "Kapital Bank", odeme: .online)
//        tesarray.append(aaa)
//        let aaaa = FeedResponse(name: "Ios devoloper", price: "300 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "MSQ", odeme: .online)
//        tesarray.append(aaaa)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        DispatchQueue.main.async {
            self.jobVacancyTableView.reloadData()
        }
    }

}
