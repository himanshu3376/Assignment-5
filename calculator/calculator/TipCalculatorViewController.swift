//
//  TipCalculatorViewController.swift
//  calculator
//
//  Created by Himanshu Sehgal on 2020-07-22.
//  Copyright © 2020 Himanshu Sehgal. All rights reserved.
//

import UIKit

class TipCalculatorViewController: UIViewController {

    
    
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var ZeroPercentButton: UIButton!
    @IBOutlet weak var TenPercentButton: UIButton!
    @IBOutlet weak var TwentyPercentButton: UIButton!
    @IBOutlet weak var splitAmountLabel: UILabel!
    
    var tip = 0.1
    var numberPeople = 2
    var total = 0.0
    var finalTotal = "0.0"
    
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
    
    @IBAction func numberPeople(_ sender: UIStepper) {
        splitAmountLabel.text = String(format: "%.0f", sender.value)
        numberPeople = Int(sender.value)
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let bill = billAmount.text!
        if bill != "" {
            total = Double(bill)!
            let result = total * (1 + tip)/Double(numberPeople)
            finalTotal = String(format: "%.2f", result)
        }
        self.performSegue(withIdentifier: "goToFinal", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToFinal" {
            let finalViewController = segue.destination as! FinalViewController
            finalViewController.total = finalTotal
            finalViewController.tip = Int(tip * 100)
            finalViewController.split = numberPeople
            
        }
        
    }

}
