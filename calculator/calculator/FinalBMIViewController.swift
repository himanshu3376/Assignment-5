//
//  FinalBMIViewController.swift
//  
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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiAmountLabel.text = calcBmiValue
        recommendationLabel.text = recommendation
        view.backgroundColor = colour
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Recalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
