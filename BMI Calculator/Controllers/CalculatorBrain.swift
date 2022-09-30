//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Joseph Serrano on 7/22/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(h: Float, w: Float) {
        let bmiValue = w / pow(h, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
        } else if bmiValue >= 18.5 && bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "you ok bro", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "eat less pies", color: .red)
        }
        
       
    }
    
    func getBMIValue() -> String {
        let bmiOneDecimal = ((bmi?.value ?? 0.0) * 10).rounded() / 10
        return String(bmiOneDecimal)
        
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    
    
}
