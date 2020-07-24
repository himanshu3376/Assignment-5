//
//  BMIViewController.swift
//
//  This class focuses on the calculation of the BMI of the user based on the values inputted by the user by using the interactive slider.
//  The values from the sliders are limited through the attributes menu and its value obtained, formatted and passed as a string, so it can be
//  updated in the text label above. This allows the user to be able to see the value they are sliding over. The overriden prepare function passes
//  desired information to the next view controller so it can be displayed and interpretted.
//
//  Created by Himanshu Sehgal on 2020-07-23.
//

import UIKit

class BMIViewController: UIViewController {
    
    //reference to the specific swift document containing the calculations for the passed variables
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
        let heightAsString = String( format: "%.2f", sender.value)  //takes the value of the slider, formats it to a float with decimal limiation
        heightText.text = "\(heightAsString)m"
    }
    
    @IBAction func changeWeight(_ sender: UISlider) {
        let weightAsString = String(format: "%.2f", sender.value)   //takes the value of the slider, formats it to a float with decimal limiation
        weightText.text = "\(weightAsString)Kg"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let heightBar = heightSlider.value
        let weightBar = weightSlider.value
        bmiCalculation.calculateBmi(height: heightBar, weight: weightBar)
        
        performSegue(withIdentifier: "FinalBMIViewController", sender: self)    //the identifier is specified when the segue interaction is generated
                                                                                //in the storyboard
    }
     
    //It is essential to override this function as the information from the previous view controller is being passed to the variables in the next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FinalBMIViewController" {
            let destinationViewController = segue.destination as! FinalBMIViewController
            destinationViewController.calcBmiValue = bmiCalculation.getBmiValue()
            destinationViewController.recommendation = bmiCalculation.getRecomm()
            destinationViewController.colour = bmiCalculation.getColour()
        }
    }
    

}
