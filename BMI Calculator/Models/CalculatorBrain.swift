//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Chris Buys on 01/12/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain {
    
    
    var weight: Int?
    var height: Float?
    
    
    let bmiClass = ["Underweight","Normal","Overweight","Obese","Extremely Obese"]
        
    
    
    func calcBMI() -> BMI {
        
        var bmi: BMI?
        
        
        if let height = self.height {
            
            if let weight = self.weight {
                
                let bmiValue = Float(weight)/(height*height)
                var advice = ""
                var color: UIColor?
                
                
                switch bmiValue {
                    
                case ..<18.5:
                    
                    advice = bmiClass[0]
                    color = .blue
                    
                case 18.5...24.9:
                    
                    advice = bmiClass[1]
                    color = .green
                    
                case 25...29.9:
                    
                    advice = bmiClass[2]
                    color = .yellow
                    
                case 30...34.9:
                    
                    advice = bmiClass[3]
                    color = .red
                    
                    
                default:
                    
                    advice = bmiClass[4]
                    color = .red
                }
                
                bmi = BMI(value: bmiValue, advice: advice, color: color!)
                
                
            }
            
        }
        
        
        
        return bmi ?? BMI(value: 20, advice: "Error", color: .systemPink)
        
    }
    
    mutating func heightChange(_ newHeight: Float) {
        
        self.height = newHeight
        
    }
    
    
    mutating func weightChange(_ newWeight: Int) {
        
        
        self.weight = newWeight
        
        
    }
    
    
    
    
    
    
    
}

