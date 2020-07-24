//
//  TipCalculatorViewController.swift
//  calculator
//
//  This section is another tab in the overall application, its primary focus is more focused on delivering information in a user friendly way.
//  The tip calculator focuses on displaying the amount of money that is due per person once a bill total and tip amounts are entered. This swift file
//  references to another view controller which provides a smooth animation and allows the app to promote user experience.
//
//  Created by Himanshu Sehgal on 2020-07-22.
//  Copyright © 2020 Himanshu Sehgal. All rights reserved.
//

import UIKit

class TipCalculatorViewController: UIViewController {

    
    //Initialization of the button outlets
    
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var ZeroPercentButton: UIButton!
    @IBOutlet weak var TenPercentButton: UIButton!
    @IBOutlet weak var TwentyPercentButton: UIButton!
    @IBOutlet weak var splitAmountLabel: UILabel!
    
    var tip = 0.1
    var numberPeople = 2
    var total = 0.0
    var finalTotal = "0.0"
    
    //Calculates the tip amount
    @IBAction func tipAmount(_ sender: UIButton) {
        
        billAmount.endEditing(true)
        ZeroPercentButton.isSelected = false
        TenPercentButton.isSelected = false
        TwentyPercentButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let buttonNumericalValueNoPercent = String(buttonTitle.dropLast())
        let buttonAsNumber = Double(buttonNumericalValueNoPercent)!
        tip = buttonAsNumber/100
    }
    
    //Determines and outputs the number of people the bill is being split between
    @IBAction func numberPeople(_ sender: UIStepper) {
        splitAmountLabel.text = String(format: "%.0f", sender.value)    //formats the output to a type float with a decimal limitation
        numberPeople = Int(sender.value)
    }
    
    //When the user interacts with this button, the final total amount is calculated and a segue is animated to the next viewcontroller
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let bill = billAmount.text!
        if bill != "" {
            total = Double(bill)!
            let result = total * (1 + tip)/Double(numberPeople)
            finalTotal = String(format: "%.2f", result)
        }
        self.performSegue(withIdentifier: "goToFinal", sender: self)
    }
    
    //It is essential to override this function as the information from the previous view controller is being passed to the variables in the next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToFinal" {
            let finalViewController = segue.destination as! FinalViewController
            finalViewController.total = finalTotal
            finalViewController.tip = Int(tip * 100)
            finalViewController.split = numberPeople
            
        }
        
    }

}
