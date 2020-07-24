//
//  CalculationForBMI.swift
//  
//  The class produces the values of the three primary variables outputted for an enterred weight and height. Depending on the critera that the BMI
//  falls under, the respective values are displayed.
//
//  Created by Himanshu Sehgal on 2020-07-23.
//

import UIKit

struct CalculationForBMI {
    
    var bmi: BMIVariables?
    
    func getBmiValue() -> String {
        let decimalBmi = String(format: "%.1f", bmi?.value ?? 0.0)
        return decimalBmi
    }
    
    func getRecomm() -> String {
        return bmi?.recommendation ?? "No Recommendation"
    }
    
    func getColour() -> UIColor {
        return bmi?.colour ?? #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    
    mutating func calculateBmi (height: Float, weight: Float){
        let bmiAmount = weight/(height * height)
        
        if (bmiAmount < 18.5) {
            bmi = BMIVariables(value: bmiAmount, recommendation: "Your BMI is lower than where it should be.", colour: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1) )
        } else if (bmiAmount < 24.9) {
            bmi = BMIVariables(value: bmiAmount, recommendation: "Your BMI is healthy.", colour: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else {
            bmi = BMIVariables(value: bmiAmount, recommendation: "Your BMI is higher than where it should be.", colour: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
}
