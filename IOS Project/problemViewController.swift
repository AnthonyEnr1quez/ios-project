//
//  problemViewController.swift
//  IOS Project
//
//  Created by chaithanya manas reddy on 20/10/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

class problemViewController: UIViewController {
    
    
    @IBOutlet weak var algorithmTV: UITextView!
    @IBOutlet weak var stepsTV: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let exProblem = SnapModel.snap.getProblem(0)
        
        algorithmTV.text = exProblem.algorithm
        stepsTV.text = exProblem.steps
        
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

