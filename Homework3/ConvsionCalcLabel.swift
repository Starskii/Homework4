//
//  ConvsionCalcLabel.swift
//  Homework3
//
//  Created by Xcode User on 2/13/20.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

class ConvsionCalcLabel: UILabel {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        self.textColor = FOREGROUND_COLOR
    }

}
