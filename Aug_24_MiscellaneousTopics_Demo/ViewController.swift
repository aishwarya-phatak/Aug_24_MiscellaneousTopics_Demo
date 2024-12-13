//
//  ViewController.swift
//  Aug_24_MiscellaneousTopics_Demo
//
//  Created by Vishal Jagtap on 13/12/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePickerDisplayLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    var dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        initializeDatePickerSettings()
    }
    
    private func initializeDatePickerSettings(){
        self.datePicker.preferredDatePickerStyle = .wheels
        self.datePicker.datePickerMode = .date
        self.datePicker.locale = nil
        self.datePicker.timeZone = nil
        self.datePicker.calendar = nil
        self.dateFormatter.dateFormat = "dd/MM/yyyy"
    }
    
    @IBAction func datePickerClick(_ sender: UIDatePicker) {
        
        self.datePickerDisplayLabel.text = String(describing: sender.date.formatted(date: .complete, time: .standard))
        dismiss(animated: true)
  }
}
