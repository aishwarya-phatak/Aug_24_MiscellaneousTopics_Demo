//
//  ThirdViewController.swift
//  Aug_24_MiscellaneousTopics_Demo
//
//  Created by Vishal Jagtap on 13/12/24.
//

import UIKit

class ThirdViewController: UIViewController {

    
    @IBOutlet weak var slider: UISlider!

    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initSettings()
    }
    
    private func initSettings(){
        
        self.slider.minimumValue = 0.0
        self.slider.maximumValue = 100.0
        
    }
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        self.displayLabel.text = String(sender.value)
        
    }
}
