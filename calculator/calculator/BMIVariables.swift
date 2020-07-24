//
//  BMIVariables.swift
//  
//  This structure focuses on containing the three variables that are displayed in the final view controller of the BMI calculator, depending on
//  the BMI that is calculated, by the inputted height and weight by the user.
//
//  Created by Himanshu Sehgal on 2020-07-23.
//

import UIKit

// thie is the initialization of the structure where the three primary variables used in the Bmi calculation are stored.

struct BMIVariables {
    let value: Float
    let recommendation: String
    let colour: UIColor
    
}
