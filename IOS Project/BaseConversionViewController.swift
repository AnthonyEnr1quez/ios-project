//
//  BaseConversionViewController.swift
//  IOS Project
//
//  Created by vijay kumar on 10/2/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

class BaseConversionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var Picker: UIPickerView!
    
    @IBOutlet var valueTextField: UITextField!
    @IBOutlet var hexValueLabel: UILabel!
    @IBOutlet var decimalValueLabel: UILabel!
    @IBOutlet var binaryValueLabel: UILabel!
    
    var inputFormat:String = "HEX"
    var pickerData:[String] = [String]()
    
    var converter = BaseConversion.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.Picker.delegate = self
        self.Picker.dataSource = self

        pickerData = ["HEX", "Decimal", "Binary"]
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
    
    // Capture the picker view selection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        inputFormat = pickerData[row]
    }
    
    @IBAction func convert(_ sender: Any) {
        if valueTextField.text != "" {
            let input = valueTextField.text!
            if converter.checkInput(input: input, type: inputFormat) == true {
                converter.convert(input: input, type: inputFormat)
                hexValueLabel.text = converter.getHexadecimal()
                decimalValueLabel.text = converter.getDecimal()
                binaryValueLabel.text = converter.getBinary()
            }
        }
    }
}
