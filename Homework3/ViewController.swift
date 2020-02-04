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
    @IBOutlet weak var fromTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         fromTextField.endEditing(true)
         toTextField.endEditing(true)
        
    }
 

    @IBAction func calculateBtn(_ sender: Any) {
        
       let  str = fromTextField.text
        if let input = Double(str!){
            toTextField.textColor = UIColor.black
            let h = 0.9144
            let output = Double(h*input)
            toTextField.text = String(output)
        } else{
            toTextField.text = "You broke it, great."
            toTextField.textColor = UIColor.red
        }

    
    }
    @IBAction func clearBtn(_ sender: Any) {
        fromTextField.text = ""
        toTextField.text = ""
    }
    @IBAction func modeBtn(_ sender: Any) {
    }
}

