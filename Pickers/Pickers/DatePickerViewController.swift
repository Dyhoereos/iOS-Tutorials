//
//  DatePickerViewController.swift
//  Pickers
//
//  Created by arcui on 2016-10-02.
//  Copyright © 2016 Dyhoer. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //let date = Date()
        //datePicker.setDate(date, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onButtonPressed(_ sender: AnyObject) {
        let date = datePicker.date
        let message = "The date and time you selected is \(date)"
        let alert = UIAlertController(title: "Date and Time Selected", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "That's so true!", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

}
