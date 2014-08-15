//
//  ThirdViewController.swift
//  SwiftUIDemo
//
//  Created by Richard Lee on 8/15/14.
//  Copyright (c) 2014 weimed. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    // Properties
    @IBOutlet var labelText: UILabel!
    @IBOutlet var pickerView: UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set initial value
        labelText.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

/*
 * Reference: http://stackoverflow.com/questions/24126550/delegate-methods-in-swift-for-uipickerview
 */
extension ThirdViewController: UIPickerViewDataSource {
    // Two required methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int
    {
        return 5
    }
}

extension ThirdViewController: UIPickerViewDelegate {
    // Several optional methods:

    // func pickerView(pickerView: UIPickerView!, widthForComponent component: Int) -> CGFloat

    // func pickerView(pickerView: UIPickerView!, rowHeightForComponent component: Int) -> CGFloat

    func pickerView(pickerView: UIPickerView!, titleForRow row: Int, forComponent component: Int) -> String! {
        return "\(row)"
    }

    // func pickerView(pickerView: UIPickerView!, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString!

    // func pickerView(pickerView: UIPickerView!, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView!

    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int) {
        labelText.text = "\(row)"
    }

}