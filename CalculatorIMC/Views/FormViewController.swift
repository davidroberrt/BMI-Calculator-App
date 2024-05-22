import UIKit

class FormViewController: UIViewController {
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var secondNameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var displayFormLabel: UILabel!
    
    @IBAction func viewResultPressedButton(_ sender: UIButton) {
        // Verifica se os campos de texto contêm valores válidos
        guard let heightText = heightTextField.text, let height = Double(heightText),
              let weightText = weightTextField.text, let weight = Double(weightText) else {
            // Exibe uma mensagem de erro caso os campos de texto estejam vazios ou contenham valores inválidos
            displayFormLabel.text = "Por favor, insira as informações válidas."
            return
        }

        // Calcula o IMC
        let bmi = weight / (height * height)
        
        // Passa os dados para a ResultViewController
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let resultVC = storyboard.instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController {
            resultVC.bmi = bmi
            self.navigationController?.pushViewController(resultVC, animated: true)
        }
    }
}
