import UIKit

class WeightCategoryViewController: UIViewController {
    
    @IBOutlet weak var ringColorStatusBadge: UIImageView!
    @IBOutlet weak var bmiTextCenterLabel: UILabel!
    @IBOutlet weak var categoryTextCenterLabel: UILabel!
    @IBOutlet weak var weightTextLabel: UILabel!
    @IBOutlet weak var heightTextLabel: UILabel!
    @IBOutlet weak var bmiTextLabel: UILabel!
    @IBOutlet weak var ResultCategoryTextView: UITextView!
    
    var height: Double = 0.0
    var weight: Double = 0.0
    var bmi: Double = 0.0
    
    let viewModel = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateInterfaceWeightCategoryView()
    }
    
    func updateInterfaceWeightCategoryView() {
        let weightCategory = viewModel.getWeightCategory(for: bmi)
        
        ringColorStatusBadge.tintColor = weightCategory.color
        categoryTextCenterLabel.text = weightCategory.name
        ResultCategoryTextView.text = weightCategory.description
        
        bmiTextCenterLabel.text = String(format: "%.1f", bmi)
        weightTextLabel.text = "Peso: \(weight) kg"
        heightTextLabel.text = "Altura: \(height) m"
        bmiTextLabel.text = String(format: "IMC: %.1f", bmi)
    }
}
