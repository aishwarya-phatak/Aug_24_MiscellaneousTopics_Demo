//
//  SecondViewController.swift
//  Aug_24_MiscellaneousTopics_Demo
//
//  Created by Vishal Jagtap on 13/12/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    
    @IBOutlet weak var onOffSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initSettings()
    }
    
    private func initSettings(){
        self.counter.text = String(0.0)
        self.stepper.value = 0.0
        self.stepper.minimumValue = 0.0
        self.stepper.maximumValue = 50.0
        self.stepper.stepValue = 4
        
    }
    
    @IBAction func stepper(_ sender: UIStepper) {
        
        self.counter.text = String(sender.value)
    
    }
    
    @IBAction func onOffSwitch(_ sender: UISwitch) {
        
        if sender.isOn == true{
            self.counter.backgroundColor = .yellow
        } else {
            self.counter.backgroundColor = .cyan
        }
    }
    
}
