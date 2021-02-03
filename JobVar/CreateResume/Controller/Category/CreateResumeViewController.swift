//
//  CreateResumeViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

class CreateResumeViewController: UIViewController { //Elan yerleesdirmek yeni istifadeci oz elanin yaradir ---- CreatResumeControllerdaki -> PreciselyCreatResumeViewController -> CreatResumeTargetViewController
    var creatResumeViewModel: CreateResumeViewModelProtocol?
    let createResumeTableView = UITableView(frame: .zero, style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupIem()
        navigationItem.title = "Kateqoriya CreateResumeViewController"
        setupNavigationBar()
        tabBarController?.tabBar.isHidden = true
        creatResumeViewModel?.getKateqory(table: createResumeTableView)
        DispatchQueue.main.async {
            self.createResumeTableView.reloadData()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
}
