//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Chris Buys on 04/12/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit //framework, bunhces of code that make our experience of developing ios apps easier. Specific to iOS

class SecondViewController: UIViewController {
        
    //variable in Second VC
    var bmiResult: Array<String> = []

    
    
    
    //function that is called when our screen is loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        //programitically creating a label
        let label = UILabel()
        
        //modify properties of the label
        label.text = bmiResult[0]
        
        //define its size and where on the screen it will be located
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        //add the button to the view
        self.view.addSubview(label)
        
        
    }
    
}

