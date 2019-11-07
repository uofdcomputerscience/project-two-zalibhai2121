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
    
    
    var calendar: Calendar?
    var ChristmasComponent: DateComponents?
    var ChristmasDate: Date?
    
    override func viewDidLoad() {
        calendar = Calendar.current
        ChristmasComponent = DateComponents(calendar: self.calendar, year: 2019, month: 12, day: 25)
        ChristmasDate = calendar?.date(from: ChristmasComponent!)
        loader.startAnimating()
    }
    
    func Completed() -> Bool{
        if calendar!.isDate(datePicker.date, inSameDayAs: ChristmasDate!){
            self.loader.startAnimating()
        }
        return calendar!.isDate(datePicker.date, inSameDayAs: ChristmasDate!)
    }
    
    
    @IBAction func ChristmasDate(_ sender: UIDatePicker){
             Continue.isEnabled = Completed()

        }
}
