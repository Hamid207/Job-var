//
//  IshAxtaranlarViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class IshAxtaranlarViewController: UIViewController {
    
    var viewModel: IshAxtaranlarViewModelProtocol?
    
    var tableView = UITableView(frame: .zero, style: .plain)
    var tesarray = [FeedResponse]()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupNavigationBar()
        setupItem()
        navigationItem.title = "IshAxtaranlarViewController"
        let aa = FeedResponse(name: "Ios devoloper Ios devoloper Ios devoloperIos devoloperIos devoloperIos devoloperIos devoloperIos devoloperIos devoloperIos devoloper", price: "300 AZN - 800 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "Hamid Manafov", odeme: .offline)
        tesarray.append(aa)
        let aaa = FeedResponse(name: "Ios devoloper", price: "300 AZN - 1000 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "Kapital Bank", odeme: .online)
        tesarray.append(aaa)
        let aaaa = FeedResponse(name: "Ios devoloper", price: "500 AZN - 150 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "MSQ", odeme: .online)
        tesarray.append(aaaa)
    }
    
}
