//
//  RGBViewController.swift
//  IOS Project
//
//  Created by Anthony Enriquez on 10/18/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

class RGBViewController: UIViewController {

    @IBOutlet weak var colorGeneratedView: UIView!
    @IBOutlet weak var numPickerView: UIPickerView!
    
    // put border on color generator view
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        colorGeneratedView.layer.borderWidth = 2
        colorGeneratedView.layer.borderColor = UIColor.black.cgColor
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

// use delegates and datasource to set up picker view
extension RGBViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 256
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(row)
    }
    
    // changes color of colorGeneratedView based on RGB values entered
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let redInput = Double(pickerView.selectedRow(inComponent: 0))
        let greenInput = Double(pickerView.selectedRow(inComponent: 1))
        let blueInput = Double(pickerView.selectedRow(inComponent: 2))
        colorGeneratedView.backgroundColor = UIColor(red: CGFloat(redInput/255.0), green: CGFloat(greenInput/255.0), blue: CGFloat(blueInput/255.0), alpha: 1.0)
    }
}
