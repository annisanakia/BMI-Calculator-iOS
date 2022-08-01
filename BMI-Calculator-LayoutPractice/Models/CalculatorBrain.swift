//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Pintro on 7/20/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2) // pow buat kuadrat
        
        print(bmiValue)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor(red: 0, green: 0.9914394021, blue: 1, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor(red: 0, green: 0.9768045545, blue: 0, alpha: 1) )
        } else {
            bmi = BMI(value: bmiValue, advice: "Overweight", color: UIColor(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let bmi = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    }
}
