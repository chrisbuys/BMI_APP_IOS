//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        calculatorBrain.weight = 100
        calculatorBrain.height = 1.5
        
        
    }
    
    
    
    
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        let height = "\(String(format: "%.2f", sender.value))m"
        heightLabel.text = height
        
        calculatorBrain.heightChange(sender.value)
        
        
    }
    
    @IBAction func weigthSlider(_ sender: UISlider) {
        
        let weight = "\(String(format: "%.0f", sender.value))Kg"
        weightLabel.text = weight
        
        calculatorBrain.weightChange(Int(sender.value))
        
        
    }
    
    
    @IBAction func bmiButton(_ sender: UIButton) {
        
        print(calculatorBrain.calcBMI())
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
        //the prepare for segue function is automitcally called when you peroform the seque transition
   
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //distinguish betwene different seques
        if segue.identifier == "goToResults" {
        
            // if the seque exists and we identified it we create an instance of our VC
            let destinationVC = segue.destination as! ResultsViewController //the view controller that will be initilaized when the seque is performed
            
            destinationVC.advice = calculatorBrain.calcBMI().advice
            destinationVC.bmi = String(format: "%.2f", calculatorBrain.calcBMI().value )
            destinationVC.color = calculatorBrain.calcBMI().color
            
            
            

        }
    }
    
    

        
    



}

