//
//  ViewController.swift
//  CalculatorIMC
//
//  Created by David Robert on 09/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    // IMC <18,5kg/m2 - baixo peso.
    //IMC >18,5 até 24,9kg/m2 - eutrofia (peso adequado)
    //IMC ≥25 até 29,9kg/m2 - sobrepeso.
    //IMC >30,0kg/m2 até 34,9kg/m2 - obesidade grau 1.
    
    
    @IBOutlet weak var displayResultLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        // Verifica se os campos de texto contêm valores válidos
        guard let heightText = heightTextField.text, let height = Double(heightText),
              let weightText = weightTextField.text, let weight = Double(weightText) else {
            // Exibe uma mensagem de erro caso os campos de texto estejam vazios ou contenham valores inválidos
            displayResultLabel.text = "Por favor, insira altura e peso válidos."
            return
        }
        
        // Calcula o IMC
        let bmi = weight / (height * height)
        
        if bmi < 18.5{
            print("baixo peso")
        }
        else if bmi >= 18.5 && bmi <= 24.9 {
            print("peso ideal/adequado")
        }
        else if bmi >= 25 && bmi <= 29.9 {
            print("sobrepeso")
        }
        else if bmi >= 30{
            print("obesidade")
        } else{
            print("erro")
        }
        // Exibe o resultado do IMC na label formatado com uma casa decimal
        displayResultLabel.text = String(format: "Seu IMC é %.1f", bmi)
    }
}
