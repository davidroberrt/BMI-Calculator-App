//
//  BMIModel.swift
//  CalculatorIMC
//
//  Created by David Robert on 20/07/24.
//

import Foundation
import UIKit
struct BMIModel {
    let height: Double
    let weight: Double
    var bmi: Double {
        return weight / (height * height)
    }
}



    /*
     struct BMIModel {
     
     let error: String?
     }
     
     // Calculate o IMC
     func a(){
     
     }
     
     // Validar e obter os valores de altura e peso
     guard let heightText = heightTextField.text, !heightText.isEmpty,
     let height = Double(heightText),
     let weightText = weightTextField.text, !weightText.isEmpty,
     let weight = Double(weightText) else {
     displayTextLabel.text = "Digite uma informação válida."
     displayTextLabel.textColor = .red
     return
     }
     }
     
     
     bmiTextCenterLabel.text = String(format: "%.1f", bmi)
     weightTextLabel.text = "Peso: \(weight)"
     heightTextLabel.text = "Altura: \(height)"
     bmiTextLabel.text = String(format: "IMC: %.1f", bmi)
     
     if bmi < 18.5{
     categoryYellow()
     }
     else if bmi >= 18.5 && bmi <= 24.9 {
     categoryGreen()
     }
     else if bmi >= 25 && bmi <= 29.9 {
     categoryOrange()
     }
     else if bmi >= 30{
     categoryRed()
     } else{
     print("erro")
     }
     
     func categoryGreen() {
     ringColorStatusBadge.tintColor = .green
     categoryTextCenterLabel.text = "Peso ideal"
     ResultCategoryTextView.text = "Parabéns! Com base no seu Índice de Massa Corporal (IMC), você está dentro da faixa considerada saudável para sua altura. Isso é um sinal de que você está cuidando bem da sua saúde. Continue com seus hábitos saudáveis, como uma dieta equilibrada e atividade física regular. Lembre-se de que manter um peso saudável não é apenas sobre estética, mas também sobre prevenir doenças e promover o bem-estar geral. Continue assim e aproveite os benefícios de um estilo de vida saudável!"
     }
     
     func categoryYellow() {
     ringColorStatusBadge.tintColor = .yellow
     categoryTextCenterLabel.text = "Abaixo do peso"
     ResultCategoryTextView.text = "Com base no seu Índice de Massa Corporal (IMC), parece que você está abaixo do peso ideal para sua altura. Isso pode indicar uma falta de nutrientes essenciais ou até mesmo problemas de saúde. Recomendamos que você consulte um profissional de saúde para uma avaliação completa. Eles podem ajudá-lo a identificar a causa e desenvolver um plano para alcançar um peso saudável. Lembre-se, uma dieta balanceada e exercícios físicos regulares são fundamentais para manter uma boa saúde."
     }
     func categoryOrange() {
     ringColorStatusBadge.tintColor = .orange
     categoryTextCenterLabel.text = "Sobrepeso"
     ResultCategoryTextView.text = "De acordo com seu Índice de Massa Corporal (IMC), você está acima do peso ideal para sua altura. Isso pode aumentar o risco de desenvolver várias condições de saúde, como diabetes tipo 2, doenças cardíacas e pressão alta. É importante abordar isso com cuidado. Considere fazer mudanças em sua dieta e estilo de vida, como comer mais alimentos saudáveis, controlar as porções e praticar exercícios regularmente. Consultar um profissional de saúde pode ajudá-lo a desenvolver um plano personalizado para alcançar e manter um peso saudável."
     }
     func categoryRed() {
     ringColorStatusBadge.tintColor = .red
     categoryTextCenterLabel.text = "Obesidade"
     ResultCategoryTextView.text = "Com base no seu Índice de Massa Corporal (IMC), você está em um estado de obesidade. Isso pode aumentar significativamente o risco de várias condições de saúde, incluindo doenças cardíacas, diabetes tipo 2, apneia do sono e certos tipos de câncer. É essencial abordar isso com urgência. Recomendamos que você consulte um profissional de saúde para avaliação e orientação. Mudanças na dieta, aumento da atividade física e outras intervenções podem ajudar a melhorar sua saúde geral."
     }
     }
     }
     */