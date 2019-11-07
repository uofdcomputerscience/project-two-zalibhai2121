//
//  SetValuesto5.swift
//  Project 2
//
//  Created by Zainab Alibhai on 11/5/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class Valuesto5: UIViewController {
    
    @IBOutlet weak var stepperIncrease: UIStepper!
    @IBOutlet weak var stepperlabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderlabel: UILabel!
    @IBOutlet weak var `continue`: UIButton!
    
    func switchValues() -> Bool {
        return Int(slider.value) == 5 && stepperIncrease.value == 5
    }
    
    
    @IBAction func StepperValue(_ sender: Any){
        stepperlabel.text = "\(Int(stepperIncrease.value))"
       `continue`.isEnabled = switchValues()
    }
    @IBAction func slider(_ sender: Any) {
        sliderlabel.text = "\(Int(slider.value))"
        `continue`.isEnabled = switchValues()
       }
}
