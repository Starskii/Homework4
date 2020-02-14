//
//  ViewController.swift
//  Homework3
//
//  Created by Xcode User on 1/30/20.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UnitSelection{
    
    func unitSelected(fromUnit: String?, toUnit: String?) {
        self.fromUnit.text = fromUnit!
        self.toUnit.text = toUnit!
    }
    
    @IBOutlet weak var toTextField: ConversionCalcTextField!
    @IBOutlet weak var fromTextField: ConversionCalcTextField!
    @IBOutlet weak var fromUnit: UILabel!
    @IBOutlet weak var toUnit: UILabel!
    
    @IBOutlet var mainView: UIView!
    var mode = "length"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fromUnit.text = "Yards"
        toUnit.text = "Meters"
        mainView.backgroundColor = BACKGROUND_COLOR
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         fromTextField.endEditing(true)
         toTextField.endEditing(true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination.children[0] is SettingsViewController {
            
            let vc = segue.destination.children[0] as? SettingsViewController
            vc?.mode = self.mode
            vc?.fromUnitVal = self.fromUnit.text!
            vc?.toUnitVal = self.toUnit.text!
            vc?.delegate = self
            
        }
    }
    func getConversionValue(fromType: String, toType: String) -> Double{
        
        var returnVal : Double = 0
        
        if(mode == "length"){
            switch(fromType){
            case toType:
                returnVal = 1
            case "Meters":
                if(toType == "Yards"){
                    returnVal = 1.09361
                }else{
                    returnVal = 0.000621371
                };break
            case "Yards":
                if(toType == "Meters"){
                    returnVal = 0.9144
                }else{
                    returnVal = 0.000568182
                };break
            case "Miles":
                if(toType == "Meters"){
                    returnVal = 1609.34
                }else{
                    returnVal = 1760
                };break
            default:
                returnVal = 1
            }
        }else{
            switch(fromType){
            case toType:
                returnVal = 1
                break
            case "Gallons":
                if(toType == "Liters"){
                    returnVal = 3.78541
                }else{
                    returnVal = 4
                };break
            case "Liters":
                if(toType == "Gallons"){
                    returnVal = 0.264172
                }else{
                    returnVal = 1.05669
                };break
            case "Quarts":
                if(toType == "Gallons"){
                    returnVal = 0.25
                }else{
                    returnVal = 0.946353
                };break
            default:
                returnVal = 1
                break//wow
            }
        }
        return returnVal
    }
    @IBAction func settingsBtn(_ sender: Any) {
            performSegue(withIdentifier: "seguine", sender: self)
    }
    
    @IBAction func calculateBtn(_ sender: Any) {
       let  str = fromTextField.text
        
        if let input = Double(str!){
            let conVal = getConversionValue(fromType: fromUnit.text!, toType: toUnit.text!)
            
            toTextField.text = ((String)(conVal*input))
           
        } else{
            toTextField.text = "You broke it, great."
          
        }
    }
    
    @IBAction func clearBtn(_ sender: Any) {
        fromTextField.text = ""
        toTextField.text = ""
    }
    

    @IBAction func modeBtn(_ sender: Any) {
        if (mode == "length"){
            mode = "volume"
            fromTextField.placeholder = "Enter Volume"
            fromUnit.text = "Gallons"
            toUnit.text = "Liters"
        }else{
            mode = "length"
            fromTextField.placeholder = "Enter Length"
            fromUnit.text = "Yards"
            toUnit.text = "Meters"
    }
        guard let ph = fromTextField.placeholder else {
            return
        }
        fromTextField.attributedPlaceholder = NSAttributedString(string: ph, attributes: [NSAttributedString.Key.foregroundColor : FOREGROUND_COLOR])
    }

}
