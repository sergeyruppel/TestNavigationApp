//
//  SecondVC.swift
//  TestNavigationApp
//
//  Created by Sergey Ruppel on 22.08.2023.
//

import UIKit

class SecondVC: UIViewController {
    
    var stringData: String?
    
    @IBOutlet private weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = stringData
    }
    
    @IBAction private func backAction() {
        navigationController?.popViewController(animated: true)
    }
    
}
