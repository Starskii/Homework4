//
//  ConversionCalcTextField.swift
//  Homework3
//
//  Created by Xcode User on 2/13/20.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

class ConversionCalcTextField: DecimalMinusTextField {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        self.layer.borderWidth = 1
        self.textColor = FOREGROUND_COLOR
        self.backgroundColor = UIColor.clear
        self.tintColor = FOREGROUND_COLOR
        self.borderStyle = .roundedRect
        self.layer.cornerRadius = 10
        self.layer.borderColor = FOREGROUND_COLOR.cgColor
        guard let ph = self.placeholder else {
            return
        }
        self.attributedPlaceholder = NSAttributedString(string: ph, attributes: [NSAttributedString.Key.foregroundColor : FOREGROUND_COLOR])
    }
}
