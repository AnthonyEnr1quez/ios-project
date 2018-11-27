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
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
        scrollView.scrollIndicatorInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // .black?
        colorGeneratedView.layer.borderWidth = 2
        colorGeneratedView.layer.borderColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
    }
    
    
    @IBAction func makeColor(_ sender: Any) {
        
        // add better type checking, input b/w 0 and 225 and an int
        if let redInput = Double(redTF.text!), let greenInput = Double(greenTF.text!), let blueInput = Double(blueTF.text!) {
            colorGeneratedView.backgroundColor = UIColor(red: CGFloat(redInput/255.0), green: CGFloat(greenInput/255.0), blue: CGFloat(blueInput/255.0), alpha: 1.0)
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
