//
//  ViewController.swift
//  tippy
//
//  Created by Abhinav Rai on 8/18/16.
//  Copyright (c) 2016 Abhinav Rai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipPercentSegment: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Connect data:
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func OnTap(sender: AnyObject) {
        print("\nHello\n")
        view.endEditing(true)
    }
    @IBAction func CalculateTip(sender: AnyObject) {
        let tipPercentages=[0.12,0.15,0.2]
        let bill = (billField.text! as NSString).doubleValue
        let tip = bill * tipPercentages[tipPercentSegment.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = NSUserDefaults.standardUserDefaults()
        let tipIndex = defaults.integerForKey("default_tip")
        print(tipIndex)
        tipPercentSegment.selectedSegmentIndex = tipIndex
        

        print("\nview will appear\n")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("\nview did appear\n")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("\nview will disappear\n")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }

}

