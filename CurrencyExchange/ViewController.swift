//
//  ViewController.swift
//  CurrencyExchange
//
//  Created by Chenyang Zhang on 6/26/17.
//  Copyright © 2017 Chenyang Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var USDField: UITextField!
    @IBOutlet weak var RateField: UISegmentedControl!
    @IBOutlet weak var OtherField: UITextField!
    
    @IBAction func ExchangeField(_ sender: AnyObject) {
        if let USD = Double(USDField.text!) {
            var rate = 0.0
            switch RateField.selectedSegmentIndex {
            case 0:
                rate = 1.33
            case 1:
                rate = 1.32
            case 2:
                rate = 6.84
            default:
                break
                
            }
            
            let roundedUSD = round(100 * USD) / 100
            let other = roundedUSD * rate
            let roundedother = round(100 * other) / 100
            
            if (!USDField.isEditing){
                USDField.text = String(format: "%.2f", roundedUSD)
            }
            OtherField.text = String(format: "%.2f", roundedother)
        } else {
            USDField.text = ""
            OtherField.text = ""
        }
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    


}

