//
//  ViewController.swift
//  TipCalculator
//
//  Created by Travis School on 1/3/17.
//  Copyright © 2017 Travis School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipcontrol: UISegmentedControl!
    
    @IBOutlet weak var billfield: UITextField!
    @IBOutlet weak var totallabel: UILabel!
    @IBOutlet weak var tiplabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Ontap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func CalculateTip(_ sender: AnyObject) {
        
        let percentage = [0.125, 0.15, 0.2]
        let bill = Double(billfield.text!) ?? 0
        let tip = bill * percentage[tipcontrol.selectedSegmentIndex];
        let total = bill + tip
        
        tiplabel.text = String(format: "$%.2f", tip)
        totallabel.text = String(format: "$%.2f", total)
    }

    }

