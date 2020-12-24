//
//  SalaryViewController.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.12.20.
//

import UIKit

class SalaryViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var timerPicker: UIPickerView!
    
    @IBOutlet weak var startButtonOutlet: UIButton!
    @IBOutlet weak var cancelButtonoutlet: UIButton!
    @IBOutlet weak var timerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view1.backgroundColor = .darkGray
        view1.alpha = 0.90
        
        startButtonOutlet.layer.borderWidth = 0.3
        startButtonOutlet.layer.borderColor = UIColor.black.cgColor
        
        cancelButtonoutlet.layer.borderWidth = 0.3
        cancelButtonoutlet.layer.borderColor = UIColor.black.cgColor
    }
    
    //CANCEL BUTTON
    @IBAction func cancelButtonAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
