//
//  ViewController.swift
//  tiperator
//
//  Created by Laci White on 8/25/15.
//  Copyright (c) 2015 Laci White. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitOneLabel: UILabel!
    @IBOutlet weak var splitTwoLabel: UILabel!
    @IBOutlet weak var splitThreeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        splitOneLabel.text = "$0.00"
        splitTwoLabel.text = "$0.00"
        splitThreeLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.15, 0.2, 0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text).doubleValue
        
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        var splitOne = total / 2
        var splitTwo = total / 3
        var splitThree = total / 4

        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitOneLabel.text = String(format: "$%.2f", splitOne)
        splitTwoLabel.text = String(format: "$%.2f", splitTwo)
        splitThreeLabel.text = String(format: "$%.2f", splitThree)

    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

