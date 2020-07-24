//
//  BMIViewController.swift
//  
//
//  Created by Himanshu Sehgal on 2020-07-23.
//

import UIKit

class BMIViewController: UIViewController {
    var bmiCalculation = CalculationForBMI()
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightText: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeHeight(_ sender: UISlider) {
        let heightAsString = String( format: "%.2f", sender.value)
        heightText.text = "\(heightAsString)m"
    }
    
    @IBAction func changeWeight(_ sender: UISlider) {
        let weightAsString = String(format: "%.2f", sender.value)
        weightText.text = "\(weightAsString)Kg"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let heightBar = heightSlider.value
        let weightBar = weightSlider.value
        bmiCalculation.calculateBmi(height: heightBar, weight: weightBar)
        
        performSegue(withIdentifier: "FinalBMIViewController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FinalBMIViewController" {
            let destinationViewController = segue.destination as! FinalBMIViewController
            destinationViewController.calcBmiValue = bmiCalculation.getBmiValue()
            destinationViewController.recommendation = bmiCalculation.getRecomm()
            destinationViewController.colour = bmiCalculation.getColour()
        }
    }
    

}
