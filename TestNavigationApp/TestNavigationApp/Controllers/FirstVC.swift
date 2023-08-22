//
//  FirstVC.swift
//  TestNavigationApp
//
//  Created by Sergey Ruppel on 22.08.2023.
//

import UIKit

final class FirstVC: UIViewController {
    
    var stringData: String?
    
    weak var mainVC: MainVC?
    
    @IBOutlet private weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = stringData
    }

    @IBAction private func closeAction() {
        mainVC?.textLabel.text = "Hi from FirstVC!"
        dismiss(animated: true)
    }
    
}
