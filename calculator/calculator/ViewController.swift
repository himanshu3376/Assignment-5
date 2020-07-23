//
//  ViewController.swift
//  calculator
//
//  Created by Himanshu Sehgal on 2020-06-26.
//  Copyright © 2020 Himanshu Sehgal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displayNumber: Double = 0;
    var firstNumber:Double = 0;
    var math = false
    var operation = 0;
    var decimalUsed:Bool = false
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if math == true
        {
            result.text = String(sender.tag - 1)
            displayNumber = Double(result.text!)!
            math = false
        } else
        {
            result.text = result.text! + String(sender.tag - 1)
            displayNumber = Double(result.text!)!
        }
    }
    
    @IBAction func operatorButton(_ sender: UIButton) {
    
        if result.text != "" && sender.tag != 11 && sender.tag != 16 {
            firstNumber = Double(result.text!)!
            
            if sender.tag == 12 {   //block for divide
                //result.text = "÷"
            }
            else if sender.tag == 13 {  //block for multiply
                //result.text = "×"
            }
            else if sender.tag == 14 {  //block for subtraction
                //result.text = "−"
            }
            else if sender.tag == 15 {  //block for addition
                //result.text = "+";
            }
            
            operation = sender.tag
            math = true;
        }
        
        else if sender.tag == 16
        {
            if operation == 12
            {
                result.text = String(firstNumber / displayNumber);
            }
            if operation == 13
            {
                result.text = String(firstNumber * displayNumber);
            }
            if operation == 14
            {
                result.text = String(firstNumber - displayNumber);
            }
            if operation == 15
            {
                result.text = String(firstNumber + displayNumber);
            }
            
        }
        else if sender.tag == 11
        {
            result.text = "";
            firstNumber = 0;
            displayNumber = 0;
            operation = 0;
            
        }
        else if sender.tag == 17 {
            result.text! += "."
        }
    }
    
   
    //Assignment of primary colour buttons
    @IBOutlet weak var primary1: UIButton!
    @IBOutlet weak var primary2: UIButton!
    @IBOutlet weak var primary3: UIButton!
    @IBOutlet weak var primary4: UIButton!
    @IBOutlet weak var primary5: UIButton!
    
    
    //Assignment of light colour buttons
    @IBOutlet weak var lightGrey: UIButton!
    @IBOutlet weak var lightGrey2: UIButton!
    @IBOutlet weak var lightGrey3: UIButton!
    
    //Assignment of dark colour buttons (Regular)
    
    @IBOutlet weak var darkGrey1: UIButton!
    @IBOutlet weak var darkGrey2: UIButton!
    @IBOutlet weak var darkGrey3: UIButton!
    @IBOutlet weak var darkGrey4: UIButton!
    @IBOutlet weak var darkGrey5: UIButton!
    @IBOutlet weak var darkGrey6: UIButton!
    @IBOutlet weak var darkGrey7: UIButton!
    @IBOutlet weak var darkGrey8: UIButton!
    @IBOutlet weak var darkGrey9: UIButton!
    @IBOutlet weak var darkGrey10: UIButton!
    
    
    @IBOutlet weak var darkGreyBig: UIButton!
    
    @IBAction func defaultTheme(_ sender: UIButton) {
        //set theme for light buttons
        lightGrey.setBackgroundImage(UIImage(named: "lightGrey.png"), for: .normal)
        lightGrey2.setBackgroundImage(UIImage(named: "lightGrey.png"), for: .normal)
        lightGrey3.setBackgroundImage(UIImage(named: "lightGrey.png"), for: .normal)
        
        //set theme for primary buttons
        primary1.setBackgroundImage(UIImage(named: "test.png"), for: .normal)
        primary2.setBackgroundImage(UIImage(named: "test.png"), for: .normal)
        primary3.setBackgroundImage(UIImage(named: "test.png"), for: .normal)
        primary4.setBackgroundImage(UIImage(named: "test.png"), for: .normal)
        primary5.setBackgroundImage(UIImage(named: "test.png"), for: .normal)
        
        //set theme for dark buttons
        
        darkGrey1.setBackgroundImage(UIImage(named: "darkGrey.png"), for: .normal)
        darkGrey2.setBackgroundImage(UIImage(named: "darkGrey.png"), for: .normal)
        darkGrey3.setBackgroundImage(UIImage(named: "darkGrey.png"), for: .normal)
        darkGrey4.setBackgroundImage(UIImage(named: "darkGrey.png"), for: .normal)
        darkGrey5.setBackgroundImage(UIImage(named: "darkGrey.png"), for: .normal)
         darkGrey6.setBackgroundImage(UIImage(named: "darkGrey.png"), for: .normal)
         darkGrey7.setBackgroundImage(UIImage(named: "darkGrey.png"), for: .normal)
         darkGrey8.setBackgroundImage(UIImage(named: "darkGrey.png"), for: .normal)
         darkGrey9.setBackgroundImage(UIImage(named: "darkGrey.png"), for: .normal)
         darkGrey10.setBackgroundImage(UIImage(named: "darkGrey.png"), for: .normal)
        
        //big dark colour button
        darkGreyBig.setBackgroundImage(UIImage(named: "darkGreyBig.png"), for: .normal)
        
        
    }
    
    @IBAction func theme2(_ sender: UIButton) {
        
        //set theme for light buttons
        lightGrey.setBackgroundImage(UIImage(named: "lightGrey.png"), for: .normal)
        lightGrey2.setBackgroundImage(UIImage(named: "lightGrey.png"), for: .normal)
        lightGrey3.setBackgroundImage(UIImage(named: "lightGrey.png"), for: .normal)
        
        //set theme for primary buttons
        primary1.setBackgroundImage(UIImage(named: "lightBlue.png"), for: .normal)
        primary2.setBackgroundImage(UIImage(named: "lightBlue.png"), for: .normal)
        primary3.setBackgroundImage(UIImage(named: "lightBlue.png"), for: .normal)
        primary4.setBackgroundImage(UIImage(named: "lightBlue.png"), for: .normal)
        primary5.setBackgroundImage(UIImage(named: "lightBlue.png"), for: .normal)
        
        //set theme for dark buttons
        
        darkGrey1.setBackgroundImage(UIImage(named: "darkNavy.png"), for: .normal)
        darkGrey2.setBackgroundImage(UIImage(named: "darkNavy.png"), for: .normal)
        darkGrey3.setBackgroundImage(UIImage(named: "darkNavy.png"), for: .normal)
        darkGrey4.setBackgroundImage(UIImage(named: "darkNavy.png"), for: .normal)
        darkGrey5.setBackgroundImage(UIImage(named: "darkNavy.png"), for: .normal)
         darkGrey6.setBackgroundImage(UIImage(named: "darkNavy.png"), for: .normal)
         darkGrey7.setBackgroundImage(UIImage(named: "darkNavy.png"), for: .normal)
         darkGrey8.setBackgroundImage(UIImage(named: "darkNavy.png"), for: .normal)
         darkGrey9.setBackgroundImage(UIImage(named: "darkNavy.png"), for: .normal)
         darkGrey10.setBackgroundImage(UIImage(named: "darkNavy.png"), for: .normal)
        
        //big dark colour button
        darkGreyBig.setBackgroundImage(UIImage(named: "darkGreyBigDarkNavy.png"), for: .normal)

    }
    
    @IBAction func theme3(_ sender: UIButton) {
        //set theme for light buttons
        lightGrey.setBackgroundImage(UIImage(named: "lightGrey.png"), for: .normal)
        lightGrey2.setBackgroundImage(UIImage(named: "lightGrey.png"), for: .normal)
        lightGrey3.setBackgroundImage(UIImage(named: "lightGrey.png"), for: .normal)
        
        //set theme for primary buttons
        primary1.setBackgroundImage(UIImage(named: "orangeRed.png"), for: .normal)
        primary2.setBackgroundImage(UIImage(named: "orangeRed.png"), for: .normal)
        primary3.setBackgroundImage(UIImage(named: "orangeRed.png"), for: .normal)
        primary4.setBackgroundImage(UIImage(named: "orangeRed.png"), for: .normal)
        primary5.setBackgroundImage(UIImage(named: "orangeRed.png"), for: .normal)
        
        //set theme for dark buttons
        
        darkGrey1.setBackgroundImage(UIImage(named: "purple.png"), for: .normal)
        darkGrey2.setBackgroundImage(UIImage(named: "purple.png"), for: .normal)
        darkGrey3.setBackgroundImage(UIImage(named: "purple.png"), for: .normal)
        darkGrey4.setBackgroundImage(UIImage(named: "purple.png"), for: .normal)
        darkGrey5.setBackgroundImage(UIImage(named: "purple.png"), for: .normal)
         darkGrey6.setBackgroundImage(UIImage(named: "purple.png"), for: .normal)
         darkGrey7.setBackgroundImage(UIImage(named: "purple.png"), for: .normal)
         darkGrey8.setBackgroundImage(UIImage(named: "purple.png"), for: .normal)
         darkGrey9.setBackgroundImage(UIImage(named: "purple.png"), for: .normal)
         darkGrey10.setBackgroundImage(UIImage(named: "purple.png"), for: .normal)
        
        //big dark colour button
        darkGreyBig.setBackgroundImage(UIImage(named: "darkGreyBigPurple.png"), for: .normal)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

