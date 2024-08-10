import UIKit

class FormViewController: UIViewController {
    
    @IBOutlet weak var displayTextLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Configura o gesture recognizer para detectar toques na view
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    // Função para esconder o teclado
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    @IBAction func cancelButton(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(identifier: "Homeview") as? ViewController else{
            return
        }
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true) // Apresentando a primeira View
    }
    @IBAction func resultPressedButton(_ sender: UIButton) {
        let model = Model()
        
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
        
        // Calcular o IMC
        let bmi = model.calculateBMI(height: height, weight: weight)
        
        // Criar uma instância da WeightCategoryViewController para passar os dados
        guard let vc = storyboard?.instantiateViewController(identifier: "result_vc") as? WeightCategoryViewController else {
            return
        }
        
        // Passar os dados para a WeightCategoryViewController
        vc.height = height
        vc.weight = weight
        vc.bmi = bmi
        
        // Apresentar a WeightCategoryViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }

}
