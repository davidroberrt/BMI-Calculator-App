import UIKit

class WeightCategoryViewController: UIViewController {
    
    // Referência dos elementos:
    // Resultado do IMC e Categorias no Centro do App/ pt Superior
    @IBOutlet weak var ringColorStatusBadge: UIImageView!
    @IBOutlet weak var bmiTextCenterLabel: UILabel!
    @IBOutlet weak var categoryTextCenterLabel: UILabel!
    
    // Parte inferior:
    @IBOutlet weak var weightTextLabel: UILabel!
    @IBOutlet weak var heightTextLabel: UILabel!
    @IBOutlet weak var bmiTextLabel: UILabel!
    
    // Texto sobre o resultado da categoria de peso:
    @IBOutlet weak var ResultCategoryTextView: UITextView!
    
    // Instância do View Model
    private let viewModel = WeightCategoryViewModel()
    
    // Propriedade para armazenar a instância de BMIModel
    var bmiModel: BMIModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Atualiza a interface quando a view é carregada
        if let bmiModel = bmiModel {
            updateInterfaceWeightCategoryView(for: bmiModel)
        } else {
            print("Erro: BMIModel não está definido.")
        }
    }
    
    func updateInterfaceWeightCategoryView(for bmiModel: BMIModel) {
        // Obtendo a categoria de peso com base no IMC
        let weightCategory = viewModel.getWeightCategory(for: bmiModel)
        
        ringColorStatusBadge.backgroundColor = weightCategory.color
        categoryTextCenterLabel.text = weightCategory.name
        ResultCategoryTextView.text = weightCategory.description
        
        bmiTextCenterLabel.text = String(format: "%.1f", bmiModel.bmi)
        weightTextLabel.text = "Peso: \(bmiModel.weight)"
        heightTextLabel.text = "Altura: \(bmiModel.height)"
        bmiTextLabel.text = String(format: "IMC: %.1f", bmiModel.bmi)
    }
}
