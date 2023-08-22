//
//  ThirdVC.swift
//  TestNavigationApp
//
//  Created by Sergey Ruppel on 22.08.2023.
//

import UIKit

class ThirdVC: UIViewController {

    var stringData: String?
    
    @IBOutlet private weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = stringData
    }
    
    @IBAction private func backAction() {
        performSegue(withIdentifier: "unwindToMainVC", sender: nil)
    }
    

}
