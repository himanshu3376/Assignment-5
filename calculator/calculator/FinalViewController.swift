//
//  FinalViewController.swift
//  
//  This swift file is referenced from 'TipCalculatorViewController', it displays the result to the user in a formatted and interactive way.
//  It references the varaibles from the prior view controller swift files.
//
//  Created by Himanshu Sehgal on 2020-07-22.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    //Initial values, set as pre-default but overriden with user inputs
    var total = "0.0"
    var tip = 10 //In percentage amount to display
    var split = 2
    
    //Function passes the calcualted value to be displayed and the result label to be formatted
    override func viewDidLoad() {
        super.viewDidLoad()
        totalAmount.text = total
        resultLabel.text = "The bill was split between \(split) people, with a \(tip)% tip."

        // Do any additional setup after loading the view.
    }
    
    //Upon interacting with the recalculate button, this portion proceeds to dismiss the segue, and proceed back to the previous view controller
    //If the segue interaction was made back to the previous view controller then the modally segue and view controller would continously open
    //several segues
    @IBAction func reclaculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
