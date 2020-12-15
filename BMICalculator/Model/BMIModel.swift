//
//  BMIModel.swift
//  BMICalculator
//
//  Created by Erdem Tas on 15.12.2020.
//

import Foundation

struct BMIModel {
    var result : Float = 0.0;
    mutating func getResult (weight : Int,height : Float) -> String{
        result = Float(weight) / pow(height, 2)
        return "Your BMI : \(String(format: "%.2f", result))"
    }
}
