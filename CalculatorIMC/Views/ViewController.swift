//
//  ViewController.swift
//  CalculatorIMC
//
//  Created by David Robert on 09/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(identifier: "form_vc") as? FormViewController else{
            return
        }
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true) // Apresentando a View Controller
    }
}
