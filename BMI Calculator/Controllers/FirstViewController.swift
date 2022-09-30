//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

//    var bmiValue = 0.0
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\((sender.value*100).rounded()/100)m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))Kg"
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = (heightSlider.value)
        let weight = (weightSlider.value)
        
        calculatorBrain.calculateBMI(h: height, w: weight)
        
        self.performSegue(withIdentifier: "goToSecond", sender: self)
        
    }

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecond" {
            let destinationVC = segue.destination as! SecondViewController //narrow it to that VC
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.adviceText = calculatorBrain.getAdvice()
            destinationVC.colorUI = calculatorBrain.getColor()
            
        }
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

