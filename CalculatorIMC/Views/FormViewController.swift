import UIKit

class FormViewController: UIViewController {
    
    @IBOutlet weak var displayTextLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func resultPressedButton(_ sender: UIButton) {
        
        
        // Criar uma instância da ResultViewController
        guard let vc = storyboard?.instantiateViewController(identifier: "result_vc") as? WeightCategoryViewController else {
            return
        }
        
        // Apresentar a ResultViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
        
        func updateInterfaceFormView(){
            
        }
    }
    
    /*displayTextLabel.text = displayTextLabel
     // Validar e obter os valores de altura e peso
     guard let heightText = heightTextField.text, !heightText.isEmpty,
     let height = Double(heightText),
     let weightText = weightTextField.text, !weightText.isEmpty,
     let weight = Double(weightText) else {
     displayTextLabel.text = "Digite uma informação válida."
     displayTextLabel.textColor = .red
     return
     }
     
     // Verificar se os valores são válidos (> 0)
     guard height > 0, weight > 0 else {
     displayTextLabel.text = "Digite uma informação válida."
     displayTextLabel.textColor = .red
     return
     }
     
     // Criar uma instância da ResultViewController
     guard let vc = storyboard?.instantiateViewController(identifier: "result_vc") as? ResultViewController else {
     return
     }
     
     // Passar os dados para a ResultViewController
     vc.height = height
     vc.weight = weight
     
     // Apresentar a ResultViewController
     vc.modalPresentationStyle = .fullScreen
     present(vc, animated: true, completion: nil)
     }*/
}
