//
//  ChristmasDate.swift
//  Project 2
//
//  Created by Zainab Alibhai on 11/5/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit
import Foundation

class ChristmasDate: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    @IBOutlet weak var Continue: UIButton!
    
    @IBAction func ChristmasDate(_ sender: UIDatePicker){
        let calendar = Calendar.current
        let ChristmasComponent = DateComponents(calendar: calendar, year: 2019, month: 12, day: 25)
        let Date = calendar.date(from: ChristmasComponent)
        
        if Date == datePicker.date{
            loader.stopAnimating()
            Continue.isEnabled = true
        } else {
            loader.startAnimating()
            Continue.isEnabled = false
        }
    }
}
