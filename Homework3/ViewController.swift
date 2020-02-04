//
//  ViewController.swift
//  Homework3
//
//  Created by Xcode User on 1/30/20.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var toTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBAction func calculateBtn(_ sender: Any) {
        toTextField.text = "430 praise it"
    }

    @IBAction func clearBtn(_ sender: Any) {
    }
    @IBAction func modeBtn(_ sender: Any) {
    }
}

