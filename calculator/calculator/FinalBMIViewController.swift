//
//  FinalBMIViewController.swift
//  
//  This class is focused on displaying the proper information and settings based on the calculated BMI. For each range of BMI, a selected recommendation
//  background colour and the value itself are displayed. The recalculated interactive button ensures the past view controller and this one are not
//  infinetely looped.
//
//  Created by Himanshu Sehgal on 2020-07-23.
//

import UIKit

class FinalBMIViewController: UIViewController {
    
    var calcBmiValue: String?
    var recommendation: String?
    var colour: UIColor?
    
    @IBOutlet weak var bmiAmountLabel: UILabel!
    @IBOutlet weak var recommendationLabel: UILabel!
    
    //upon loading of the view controller the corresponding values from the prior view controller are passed to this view controller
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiAmountLabel.text = calcBmiValue
        recommendationLabel.text = recommendation
        view.backgroundColor = colour
        

        // Do any additional setup after loading the view.
    }
    
    //essential for dismissing the animated segue
    @IBAction func Recalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
