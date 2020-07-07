//
//  StyleGuide.swift
//  Calculator
//
//  Created by Hunter McNeil on 7/6/20.
//  Copyright © 2020 Hunter McNeil. All rights reserved.
//

import UIKit

extension UIColor {
    static let calculatorBackground = UIColor(named: "calculatorBackground")!
    static let commandButton = UIColor(named: "commandButton")!
    static let functionButton = UIColor(named: "functionButton")!
    static let numberButton = UIColor(named: "numberButton")!
    static let numbersColor = UIColor(named: "numbersColor")
}

extension UIView {
    func addCornerRadius() {
        self.layer.cornerRadius = self.frame.height / 2.75
        self.clipsToBounds = true
    }
}
