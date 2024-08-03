import Foundation
import UIKit

class Model {
    struct BMIModel {
        let height: Double
        let weight: Double
        var bmi: Double {
            return weight / (height * height)
        }
    }
    
    struct BMICategory {
        let name: String
        let color: UIColor
        let description: String
    }
    
    func calculateBMI(height: Double, weight: Double) -> Double {
        return BMIModel(height: height, weight: weight).bmi
    }
    
    func getWeightCategory(for bmi: Double) -> BMICategory {
        switch bmi {
        case ..<18.5:
            return BMICategory(name: "Abaixo do peso", color: .yellow, description: "Com base no seu Índice de Massa Corporal (IMC), parece que você está abaixo do peso ideal para sua altura. Isso pode indicar uma falta de nutrientes essenciais ou até mesmo problemas de saúde. Recomendamos que você consulte um profissional de saúde para uma avaliação completa. Eles podem ajudá-lo a identificar a causa e desenvolver um plano para alcançar um peso saudável. Lembre-se, uma dieta balanceada e exercícios físicos regulares são fundamentais para manter uma boa saúde.")
        case 18.5..<24.9:
            return BMICategory(name: "Peso Ideal", color: .green, description: "Parabéns! Com base no seu Índice de Massa Corporal (IMC), você está dentro da faixa considerada saudável para sua altura. Isso é um sinal de que você está cuidando bem da sua saúde. Continue com seus hábitos saudáveis, como uma dieta equilibrada e atividade física regular. Lembre-se de que manter um peso saudável não é apenas sobre estética, mas também sobre prevenir doenças e promover o bem-estar geral. Continue assim e aproveite os benefícios de um estilo de vida saudável!")
        case 25..<29.9:
            return BMICategory(name: "Sobrepeso", color: .orange, description: "De acordo com seu Índice de Massa Corporal (IMC), você está acima do peso ideal para sua altura. Isso pode aumentar o risco de desenvolver várias condições de saúde, como diabetes tipo 2, doenças cardíacas e pressão alta. É importante abordar isso com cuidado. Considere fazer mudanças em sua dieta e estilo de vida, como comer mais alimentos saudáveis, controlar as porções e praticar exercícios regularmente. Consultar um profissional de saúde pode ajudá-lo a desenvolver um plano personalizado para alcançar e manter um peso saudável.")
        default:
            return BMICategory(name: "Obesidade", color: .red, description: "Com base no seu Índice de Massa Corporal (IMC), você está em um estado de obesidade. Isso pode aumentar significativamente o risco de várias condições de saúde, incluindo doenças cardíacas, diabetes tipo 2, apneia do sono e certos tipos de câncer. É essencial abordar isso com urgência. Recomendamos que você consulte um profissional de saúde para avaliação e orientação. Mudanças na dieta, aumento da atividade física e outras intervenções podem ajudar a melhorar sua saúde geral.")
        }
    }
}

// Exemplo de uso:
let model = Model()
let height: Double = 1.75
let weight: Double = 70
let bmi = model.calculateBMI(height: height, weight: weight)
let category = model.getWeightCategory(for: bmi)
