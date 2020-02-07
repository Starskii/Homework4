//
//  SettingsViewController.swift
//  Homework3
//
//  Created by Xcode User on 2/6/20.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

protocol UnitSelection {
    func unitSelected(fromUnit: String?, toUnit: String?)
}

class SettingsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
     var delegate: UnitSelection?
    
    var mode = ""
    var fromUnitVal = "404"
    var toUnitVal = "404"
  
    
    var pickerData : [String] = [String]()
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var tLbl: UILabel!
    @IBOutlet weak var fLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.picker.delegate = self
        self.picker.dataSource = self
        self.picker.isHidden = true
        fLbl.text = fromUnitVal
        tLbl.text = toUnitVal
        if (mode == "volume"){
            pickerData = ["Gallons","Liters","Quarts"]
        }else{
            pickerData = ["Meters","Yards","Miles"]
        }
        // Do any additional setup after loading the view.
    }
    
    var selectedLbl = ""
    
    @IBAction func pickerHide(_ sender: Any) {
 self.picker.isHidden = true
        
    }
    @IBAction func toGesture(_ sender: Any) {
        selectedLbl = "To"
        self.picker.isHidden = false
    }
    @IBAction func fromGesture(_ sender: Any) {
        selectedLbl = "From"
        self.picker.isHidden = false
    }
    @IBAction func cancelBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func saveBtn(_ sender: Any) {
        delegate?.unitSelected(fromUnit: fLbl.text, toUnit: tLbl.text)
        self.dismiss(animated: true, completion: nil)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      
        if(self.selectedLbl == "From"){//Don't ask too many questions
            fLbl.text = pickerData[row]
        }else{
            tLbl.text = pickerData[row]
        }
    }



    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
