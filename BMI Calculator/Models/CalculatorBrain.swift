//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Peiyun on 2023/2/9.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi:BMI?
    
    
    func getBMIValue()->String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() ->String{
        return bmi?.advice ?? "No advice"
        
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
        
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue < 24{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
    
}


