//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Chris Buys on 04/12/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    var bmi: String?
    var advice: String?
    var color: UIColor?
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmi
        adviceLabel.text = advice
        view.backgroundColor = color
        

        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil) //completion - nothing happens after it is done
        
        
    }
    

}
