//
//  ViewController.swift
//  Project 2
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentSwitch: UISegmentedControl!
   
    @IBOutlet weak var switchA: UISwitch!
    @IBOutlet weak var SwitchD: UISwitch!
    @IBOutlet weak var SwitchC: UISwitch!
    @IBOutlet weak var switchB: UISwitch!
    @IBOutlet weak var ABstackView: UIStackView!
    @IBOutlet weak var CDstackView: UIStackView!
    @IBOutlet weak var continue1: UIButton!

    
   override func viewDidLoad() {
       super.viewDidLoad()
      // Do any additional setup after loading the view.
    ABstackView.isHidden = false
    CDstackView.isHidden = true
    }

    @IBAction func segmentSwitchdidChange(_ sender: Any){
        switch segmentSwitch.selectedSegmentIndex {
        case 0:
            ABstackView.isHidden.toggle()
            CDstackView.isHidden.toggle()
        case 1:
            ABstackView.isHidden.toggle()
            CDstackView.isHidden.toggle()
        default:
           break
        }
    }
    @IBAction func switchOn(_ sender: Any){
        if switchB.isOn &&  switchA.isOn && SwitchD.isOn && SwitchC.isOn{
            continue1.isEnabled = true
        } else{
            continue1.isEnabled = false
        }
    }

    @IBAction func SwitchB(_ sender: Any) {
        if switchB.isOn &&  switchA.isOn && SwitchD.isOn && SwitchC.isOn{
            continue1.isEnabled = true
        } else{
            continue1.isEnabled = false
        }
    }
    
    @IBAction func SwitchC(_ sender: Any) {
        if switchB.isOn &&  switchA.isOn && SwitchD.isOn && SwitchC.isOn{
            continue1.isEnabled = true
        } else{
            continue1.isEnabled = false
        }
    }
    @IBAction func SwitchD(_ sender: Any) {
        if switchB.isOn &&  switchA.isOn && SwitchD.isOn && SwitchC.isOn{
            continue1.isEnabled = true
        } else{
            continue1.isEnabled = false
        }
    }
}

