//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Joseph Serrano on 7/22/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var bmiValue: String?
    var adviceText: String?
    var colorUI: UIColor?

    
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    @IBOutlet var backgroundColor: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundColor.backgroundColor = colorUI
        adviceLabel.text = adviceText
        bmiLabel.text = bmiValue

        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    
    



}
