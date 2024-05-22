import UIKit

class ResultViewController: UIViewController {
    var bmi: Double = 0.0 // Variável para receber o valor do IMC
    
    @IBOutlet weak var resultLabel: UILabel! // UILabel para exibir o resultado
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        displayBMIResult()
    }
    
    func displayBMIResult() {
        var resultText = ""
        
        if bmi < 18.5 {
            resultText = "Baixo peso"
        } else if bmi >= 18.5 && bmi <= 24.9 {
            resultText = "Peso ideal/adequado"
        } else if bmi >= 25 && bmi <= 29.9 {
            resultText = "Sobrepeso"
        } else if bmi >= 30 {
            resultText = "Obesidade"
        } else {
            resultText = "Erro no cálculo"
        }
        
        resultLabel.text = "Seu IMC é \(String(format: "%.2f", bmi)): \(resultText)"
    }
}
