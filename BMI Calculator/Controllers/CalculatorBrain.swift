//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ayanesh Sarkar on 27/01/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        let bmiAdvice: String = bmi?.advice ?? "No advice"
        return bmiAdvice
    }
    
    func getColor() -> UIColor {
        let bmiColor: UIColor = bmi?.color ?? UIColor.white
        return bmiColor
    }
    
    mutating func calculateBMI(height: Float, weight: Float) -> Void {
        let bmiValue: Float = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.systemTeal)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies!", color: UIColor.systemPink)
        }
    }
}
