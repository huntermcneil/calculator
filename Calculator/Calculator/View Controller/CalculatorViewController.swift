//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Hunter McNeil on 7/6/20.
//  Copyright © 2020 Hunter McNeil. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var acButton:         UIButton!
    @IBOutlet weak var mediaButton:      UIButton!
    @IBOutlet weak var percentageButton: UIButton!
    @IBOutlet weak var divideButton:     UIButton!
    @IBOutlet weak var sevenButton:      UIButton!
    @IBOutlet weak var eightButton:      UIButton!
    @IBOutlet weak var nineButton:       UIButton!
    @IBOutlet weak var multiplyButton:   UIButton!
    @IBOutlet weak var fourButton:       UIButton!
    @IBOutlet weak var fiveButton:       UIButton!
    @IBOutlet weak var sixButton:        UIButton!
    @IBOutlet weak var minusButton:      UIButton!
    @IBOutlet weak var oneButton:        UIButton!
    @IBOutlet weak var twoButton:        UIButton!
    @IBOutlet weak var threeButton:      UIButton!
    @IBOutlet weak var plusButton:       UIButton!
    @IBOutlet weak var zeroButton:       UIButton!
    @IBOutlet weak var decimalButton:    UIButton!
    @IBOutlet weak var equalButton:      UIButton!
    @IBOutlet weak var resultsLabel:     UILabel!
    
    //MARK: - Properties
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performingMath = false
    var operation = 0
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Actions
    
    @IBAction func calculatorNumberButtonTapped(_ sender: UIButton) {
        if performingMath == true {
            resultsLabel.text = String(sender.tag)
            
            numberOnScreen = Double(resultsLabel.text!)!
            
            performingMath = false
            
        } else {
            
            resultsLabel.text = resultsLabel.text! + String(sender.tag-1)
            
            numberOnScreen = Double(resultsLabel.text!)!
        }
    }
    
    //MARK: - Methods
    func setupView() {
        self.view.backgroundColor = .calculatorBackground
        self.resultsLabel.backgroundColor = .calculatorBackground
        
    }
}
