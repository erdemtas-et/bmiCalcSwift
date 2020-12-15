//
//  ViewController.swift
//  BMICalculator
//
//  Created by Erdem Tas on 15.12.2020.
//

import UIKit

class ViewController: UIViewController {

    var bmiModel = BMIModel()
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var heightSlider: UISlider!

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var weightText: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    var heightValue : Float = 0.0
    var weightValue : Int = 150
    var result : Float = 0.0
    
    override func viewDidLoad() {
        heightSlider.value = 2
        weightSlider.value = 150
        resultLabel.text = "";
        heightText.text = "2.00m"
        weightText.text = "150kg"
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValue = Float(heightSlider.value)
        let heightStringFormat = String(format: "%.2f", heightValue);
        heightText.text = "\(heightStringFormat)m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        weightValue = Int(weightSlider.value)
        let weightFormat = String("\(weightValue)kg")
        weightText.text = String(weightFormat)
        
        
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
 
        resultLabel.text = bmiModel.getResult(weight: weightValue, height: heightValue)
        
    }
    
}

