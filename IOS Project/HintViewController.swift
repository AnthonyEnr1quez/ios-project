//
//  HintViewController.swift
//  IOS Project
//
//  Created by chaithanya manas reddy on 20/10/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

class HintViewController: UIViewController {
    
    @IBOutlet weak var HintImageView: UIImageView!
    let problem = SnapModel.snap.selectedProblem
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        HintImageView.image = UIImage(named: "\(problem.hint).png")
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
