//
//  RGBViewController.swift
//  IOS Project
//
//  Created by Anthony Enriquez on 10/18/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

class RGBViewController: UIViewController {

    @IBOutlet weak var redTF: UITextField!
    @IBOutlet weak var greenTF: UITextField!
    @IBOutlet weak var blueTF: UITextField!
    @IBOutlet weak var colorGeneratedView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    // move scrollview to top of screen
    // put border on color generator
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        scrollView.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
        scrollView.scrollIndicatorInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
        
        colorGeneratedView.layer.borderWidth = 2
        colorGeneratedView.layer.borderColor = UIColor.black.cgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    
    // changes color of colorGeneratedView based on RGB values entered
    @IBAction func makeColor(_ sender: Any) {
        if let redInput = Double(redTF.text!), let greenInput = Double(greenTF.text!), let blueInput = Double(blueTF.text!) {
            if 0 ... 255 ~= redInput && 0 ... 255 ~= greenInput && 0 ... 255 ~= blueInput {
                colorGeneratedView.backgroundColor = UIColor(red: CGFloat(redInput/255.0), green: CGFloat(greenInput/255.0), blue: CGFloat(blueInput/255.0), alpha: 1.0)
            }
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
