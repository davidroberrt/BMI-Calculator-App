import Foundation
import UIKit

class FormViewModel {
    weak var viewController: FormViewController?
    
    init(viewController: FormViewController) {
        self.viewController = viewController
    }
    func showError() {
        viewController?.displayTextLabel.text = "Digite uma informação válida."
        viewController?.displayTextLabel.textColor = .red
    }
    func getAndVerifyValues() -> Model.BMIModel? {
        // Validar e obter os valores de altura e peso
        guard let heightText = viewController?.heightTextField.text, !heightText.isEmpty,
              let height = Double(heightText),
              let weightText = viewController?.weightTextField.text, !weightText.isEmpty,
              let weight = Double(weightText) else {
            showError()
            return nil
        }
        
        // Verificar se os valores são válidos (> 0)
        guard height > 0, weight > 0 else {
            showError()
            return nil
        }
        
        // Criar e retornar a instância do BMIModel com valores válidos
        var values = Model.BMIModel(height: height, weight: weight)
        return values
    }
    

}
