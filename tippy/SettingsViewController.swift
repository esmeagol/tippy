//
//  SettingsViewController.swift
//  tippy
//
//  Created by Abhinav Rai on 9/5/16.
//  Copyright (c) 2016 Abhinav Rai. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTip: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func defaultChange(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        print(defaultTip.selectedSegmentIndex)
        defaults.setInteger(defaultTip.selectedSegmentIndex, forKey: "default_tip")
        defaults.synchronize()

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
