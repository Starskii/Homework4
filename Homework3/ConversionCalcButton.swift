//
//  ConversionCalcButton.swift
//  Homework3
//
//  Created by Xcode User on 2/13/20.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

class ConversionCalcButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        self.backgroundColor = FOREGROUND_COLOR
        self.setTitleColor(BACKGROUND_COLOR, for: .normal)
        
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 8
        self.layer.borderColor = FOREGROUND_COLOR.cgColor
        
    }

}
