//
//  SecondViewController.swift
//  SwiftUIDemo
//
//  Created by Richard Lee on 8/15/14.
//  Copyright (c) 2014 weimed. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // Properties
    @IBOutlet var labelText: UILabel!
    @IBOutlet var datePicker: UIDatePicker!
    var selectedDay: NSDate?
    var dateFormatter: NSDateFormatter?

    @IBAction func datePickerChanged(sender: AnyObject) {
        var selectedDate = (sender as UIDatePicker).date
        self.labelText.text = self.dateFormatter!.stringFromDate(selectedDate)
        self.selectedDay = selectedDate
    }

    func setupLabelText() {
        dateFormatter = NSDateFormatter()
        dateFormatter!.dateStyle = .MediumStyle
        dateFormatter!.timeStyle = .MediumStyle

        var defaultDate = NSDate.date()

        self.labelText.text = dateFormatter!.stringFromDate(defaultDate)
        //self.labelText.textColor = Color

        self.selectedDay = defaultDate
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set an initial value
        setupLabelText()
        datePicker.date = self.selectedDay
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

