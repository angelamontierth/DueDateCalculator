//
//  LMPDateViewController.swift
//  DueDateCalculator
//
//  Created by Angela Montierth on 3/28/17.
//  Copyright © 2017 Angela Montierth. All rights reserved.
//

import UIKit

class LMPDateViewController: UIViewController {
    
    // variables for items in view
    
    var lmpLabel = UILabel()
    var datePicker = UIDatePicker()
    var calculateButton = UIButton()
    var pregnantImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor =
        // call functions here
        setupElements()
        

    }
    
    func setupElements() {
        
        // LMP Label setup
        
        lmpLabel.text = "Enter the first day of your last menstrual period."
        lmpLabel.numberOfLines = 3
        lmpLabel.textColor = UIColor.black
        
        // Date Picker setup
        datePicker.datePickerMode = UIDatePicker.dat
        
        // Calculate button Setup
        
        // calculateButton.titleLabel = "Calculate"
        
        
        
    }
    
    func setupConstraints() {
        
        
    }
    
    
    func calculateButtonTaped() {
        
        
    }

    

}
