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
    
    @IBAction func StepperValue(_ sender: Any){
        stepperlabel.text = "\(Int(stepperIncrease.value))"
        if Int(slider.value) == 5 && Int(stepperIncrease.value) == 5 {
            `continue`.isEnabled = true
        } else {
            `continue`.isEnabled = false
        }
    }
    @IBAction func slider(_ sender: Any) {
        sliderlabel.text = "\(Int(slider.value))"
        if Int(slider.value) == 5 && Int(stepperIncrease.value) == 5 {
            `continue`.isEnabled = true
        } else {
            `continue`.isEnabled = false
        }
       }
}
