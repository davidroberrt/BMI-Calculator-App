import UIKit

class WeightCategoryViewController: UIViewController {
    
    @IBOutlet weak var ringColorStatusBadge: UIImageView!
    @IBOutlet weak var bmiTextCenterLabel: UILabel!
    @IBOutlet weak var categoryTextCenterLabel: UILabel!
    @IBOutlet weak var weightTextLabel: UILabel!
    @IBOutlet weak var heightTextLabel: UILabel!
    @IBOutlet weak var bmiTextLabel: UILabel!
    @IBOutlet weak var ResultCategoryTextView: UITextView!
    
    private var viewModel: WeightCategoryViewModel!
    var bmiModel: BMIModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = WeightCategoryViewModel(viewController: self)
        if let bmiModel = bmiModel {
            updateInterfaceWeightCategoryView(for: bmiModel)
        }
    }
    
    func updateInterfaceWeightCategoryView(for bmiModel: BMIModel) {
        let WeightCategory = viewModel.getWeightCategory(for: bmiModel)
        
        ringColorStatusBadge.backgroundColor = WeightCategory.color
        categoryTextCenterLabel.text = WeightCategory.name
        ResultCategoryTextView.text = WeightCategory.description
        
        bmiTextCenterLabel.text = String(format: "%.1f", bmiModel.bmi)
        weightTextLabel.text = "Peso: \(bmiModel.weight)"
        heightTextLabel.text = "Altura: \(bmiModel.height)"
        bmiTextLabel.text = String(format: "IMC: %.1f", bmiModel.bmi)
    }
}
