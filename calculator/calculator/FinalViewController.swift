//
//  FinalViewController.swift
//  
//
//  Created by Himanshu Sehgal on 2020-07-22.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    var total = "0.0"
    var tip = 10 //In percentage amount to display
    var split = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalAmount.text = total
        resultLabel.text = "The bill was split between \(split) people, with a \(tip)% tip."

        // Do any additional setup after loading the view.
    }
    
    @IBAction func reclaculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
