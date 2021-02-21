//
//  ViewController.swift
//  tip
//
//  Created by xcode on 2/20/21.
//  Copyright © 2021 elBytes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipPercentageTextField: UITextField!
    @IBOutlet weak var tipAmountLablel: UILabel!
    
    var billAmount: Double = 0
    var tipAmount: Double = 0
    var tipPercentage: Double = 0
    var total: Double = 0

    
    
    @IBAction func billChange(_ sender: Any) {
        calculate()
        updateUI()
    }
    
  
    @IBAction func tipChange(_ sender: Any) {
        calculate()
        updateUI()
    }
    
    func calculate(){
        tipPercentage = (tipPercentageTextField.text! as NSString).doubleValue
        billAmount =  (billTextField.text! as NSString).doubleValue
        tipAmount = (tipPercentage / 100) * billAmount
        total = billAmount + tipAmount
    }
    
    func updateUI(){
        tipAmountLablel.text = String(format: "$%0.2f", tipAmount)
        totalLable.text = String(format: "$%0.2f", total)
    }
}

