//
//  CustomButtons.swift
//  Calculator
//
//  Created by Hunter McNeil on 7/6/20.
//  Copyright © 2020 Hunter McNeil. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override func awakeFromNib() {
        setupNumberButton()
    }
    
    func setupNumberButton() {
        self.backgroundColor = .numberButton
        self.tintColor = .numbersColor
        self.addCornerRadius()
    }
}

class OperationButton: UIButton {
    override func awakeFromNib() {
        setupOperationButton()
    }
    
    func setupOperationButton() {
        self.backgroundColor = .functionButton
        self.tintColor = .numbersColor
        self.addCornerRadius()
    }
}

class CommandButton: UIButton {
    override func awakeFromNib() {
        setupCommandButton()
    }
    
    func setupCommandButton() {
        self.backgroundColor = .commandButton
        self.tintColor = .calculatorBackground
        self.addCornerRadius()
    }
}
