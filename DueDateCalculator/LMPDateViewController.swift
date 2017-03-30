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
    var congratulationsLabel = UILabel()
    var dueDateLabel = UILabel()
    var calculateButton = UIButton()
    var pregnantImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.cyan
        // call functions here
        setupElements()
        setupConstraints()

    }
    
    func setupElements() {
        
        //=======================================================
        // MARK: - Set elements, Targets, and Subviews
        //=======================================================

        guard let mediumFont: UIFont = UIFont(name: "BebasNeue", size: 45),
            let largeFont: UIFont = UIFont(name: "BebasNeue", size: 60),
            let smallFont: UIFont = UIFont(name: "BebasNeue", size: 25)
            else {return}
        
        
        // LMP Label setup
        
        lmpLabel.text = "Enter the first day of your last menstrual period."
        lmpLabel.numberOfLines = 4
        lmpLabel.textColor = UIColor.black
        lmpLabel.font = mediumFont
        lmpLabel.textAlignment = NSTextAlignment.center
        self.view.addSubview(lmpLabel)
        
        
        // Date Picker setup
        
        datePicker.backgroundColor = UIColor.white
        datePicker.datePickerMode = UIDatePickerMode.date
//        datePicker.addTarget(datePicker.addTarget(self, action: #selector(handleDatePicker(_:)), for: .valueChanged))
        self.view.addSubview(datePicker)
        
        // congratulationsLabel setup
        
        congratulationsLabel.text = "Congratulations!"
        congratulationsLabel.numberOfLines = 1
        congratulationsLabel.textColor = UIColor.black
        congratulationsLabel.font = largeFont
        congratulationsLabel.textAlignment = NSTextAlignment.center
        self.view.addSubview(congratulationsLabel)
        
        // dueDateLabel setup
        
        dueDateLabel.text = "Your approximate due date is:"
        dueDateLabel.numberOfLines = 2
        dueDateLabel.textColor = UIColor.black
        dueDateLabel.font = smallFont
        dueDateLabel.textAlignment = NSTextAlignment.center
        self.view.addSubview(dueDateLabel)
        
       /* // Calculate button Setup
        
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(UIColor.black, for: .normal)
        calculateButton.backgroundColor = UIColor.white
        calculateButton.addTarget(self, action: #selector(calculateButtonTapped), for: .touchUpInside)
        calculateButton.titleLabel?.font = mediumFont
        self.view.addSubview(calculateButton)
        
      */
        
        
        
    }
    
    func setupConstraints() {
       
        // TELL COMPILER NOT TO FILL IN GAPS
        
        lmpLabel.translatesAutoresizingMaskIntoConstraints = false
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        congratulationsLabel.translatesAutoresizingMaskIntoConstraints = false
        dueDateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // calculateButton.translatesAutoresizingMaskIntoConstraints = false
        
        //=======================================================
        // MARK: - lmpLabel Constraints
        //=======================================================
        
        // let lmpLabelWidth = NSLayoutConstraint(item: lmpLabel, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.80, constant: 0)
        let lmpLabelHeight = NSLayoutConstraint(item: lmpLabel, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.25, constant: 0)
        let lmpLabelLeading = NSLayoutConstraint(item: lmpLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 16)
        let lmpLabelTop = NSLayoutConstraint(item: lmpLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 60)
        let lmpLabelTrailing = NSLayoutConstraint(item: lmpLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: -16)
        // let lmpLabelBottom = NSLayoutConstraint(item: lmpLabel, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: -300)
        
        self.view.addConstraints([lmpLabelHeight, lmpLabelLeading, lmpLabelTop, lmpLabelTrailing])
        
        //=======================================================
        // MARK: - datePicker Constraints
        //=======================================================

        let datePickerTop = NSLayoutConstraint(item: datePicker, attribute: .top, relatedBy: .equal, toItem: lmpLabel, attribute: .bottom, multiplier: 1, constant: 16)
        let datePickerLeading = NSLayoutConstraint(item: datePicker, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 16)
        let datePickerTrailing = NSLayoutConstraint(item: datePicker, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: -16)
        // let datePickerBottom = NSLayoutConstraint(item: datePicker, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 0.30, constant: 0)
        let datePickerHeight = NSLayoutConstraint(item: datePicker, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.13, constant: 0)
        
        self.view.addConstraints([datePickerTop, datePickerLeading, datePickerTrailing, datePickerHeight])
        
        //=======================================================
        // MARK: - congratulationsLabel Constraints
        //=======================================================
        
        let congratulationsLabelTop = NSLayoutConstraint(item: congratulationsLabel, attribute: .top, relatedBy: .equal, toItem: datePicker, attribute: .bottom, multiplier: 1, constant: 30)
        let congratulationsLabelLeading = NSLayoutConstraint(item: congratulationsLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 16)
        let congratulationsLabelTrailing = NSLayoutConstraint(item: congratulationsLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: -16)
        let congratulationsLabelHeight = NSLayoutConstraint(item: congratulationsLabel, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.08, constant: 0)
        
        self.view.addConstraints([congratulationsLabelTop, congratulationsLabelLeading, congratulationsLabelTrailing, congratulationsLabelHeight])
        
        
        //=======================================================
        // MARK: - dueDateLabel Constraints
        //=======================================================
       
        
        let dueDateLabelTop = NSLayoutConstraint(item: dueDateLabel, attribute: .top, relatedBy: .equal, toItem: congratulationsLabel, attribute: .bottom, multiplier: 1, constant: 8)
        let dueDateLabelLeading = NSLayoutConstraint(item: dueDateLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 16)
        let dueDateLabelTrailing = NSLayoutConstraint(item: dueDateLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: -16)
        let dueDateLabelHeight = NSLayoutConstraint(item: dueDateLabel, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.05, constant: 0)
        
        self.view.addConstraints([dueDateLabelTop, dueDateLabelLeading, dueDateLabelTrailing, dueDateLabelHeight])
        
        //=======================================================
        // MARK: - dueDateLabel Constraints
        //=======================================================

        
        
        
        
        /*

        //=======================================================
        // MARK: - calculateButton Constraints
        //=======================================================

        let calculateButtonTop = NSLayoutConstraint(item: calculateButton, attribute: .top, relatedBy: .equal, toItem: datePicker, attribute: .bottom, multiplier: 1, constant: 50)
        let calculateButtonLeading = NSLayoutConstraint(item: calculateButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 16)
        let calculateButtonTrailing = NSLayoutConstraint(item: calculateButton, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: -16)
        // let calculateButtonBottom = NSLayoutConstraint(item: calculateButton, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: -50)
        let calculateButtonHeight = NSLayoutConstraint(item: calculateButton, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.20, constant: 0)
        
        self.view.addConstraints([calculateButtonTop, calculateButtonLeading, calculateButtonTrailing, calculateButtonHeight])
        */
    }
 
   /*
    func datePickerValueChanged() {
        
        print(datePicker.date)
        DueDateController.shared.calculateDueDate(lmpDate: datePicker.date)
        
    // segue
        
    }
    */
    

}
