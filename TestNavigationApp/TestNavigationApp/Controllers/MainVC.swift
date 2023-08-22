//
//  MainVC.swift
//  TestNavigationApp
//
//  Created by Sergey Ruppel on 22.08.2023.
//

import UIKit

final class MainVC: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction private func goToFirstVC() {
        performSegue(withIdentifier: "goToFirstVC", sender: "Hi from MainVC!")
    }
    
    @IBAction private func goToSecondVC() {
        let vc = SecondVC(nibName: "SecondVC", bundle: nil)
        vc.stringData = "Hi from MainVC!"
        vc.navigationItem.title = "XIB"
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func goToThirdVCWithoutSegue() {
        let storyboard = UIStoryboard(name: "AnotherStoryboard", bundle: nil)
        guard let thirdVC = storyboard.instantiateViewController(withIdentifier: "ThirdVC") as? ThirdVC else {
            return
        }
        thirdVC.navigationItem.title = "Third VC"
        thirdVC.stringData = "Hello from Main VC"
        navigationController?.pushViewController(thirdVC, animated: true)
    }
    
    @IBAction func unwindToMainVC(_ unwindSegue: UIStoryboardSegue) {
        if let thirdVC = unwindSegue.source as? ThirdVC {
            textLabel.text = "Hi from Third VC!"
        }
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToFirstVC",
           let firstVC = segue.destination as? FirstVC,
           let strData = sender as? String {
            firstVC.stringData = strData
            firstVC.mainVC = self
        } else if segue.identifier == "goToThirdVCWithSegue",
                  let thirdVC = segue.destination as? ThirdVC {
            thirdVC.stringData = "Hi from Main!"
        }
        
    }
    
}
