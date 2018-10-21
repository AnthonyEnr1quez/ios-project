//
//  problemViewController.swift
//  IOS Project
//
//  Created by chaithanya manas reddy on 20/10/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

class problemViewController: UIViewController {

    @IBOutlet weak var square1: UITextField!
    
    @IBOutlet weak var square2: UITextField!
    
    
    @IBOutlet weak var square3: UITextField!
    
    @IBOutlet weak var square4: UITextField!

    @IBOutlet weak var algorithmLBL: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        algorithmLBL.text = "Draw a 100 x 100 square "
        
        square1.text = "move forward 100"
        square2.text = "turn right 90"
        square3.text = "turn right 90 repeat 4 times"
        square4.text = "Done"
        
        // Do any additional setup after loading the view.
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
