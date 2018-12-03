//
//  HintViewController.swift
//  IOS Project
//
//  Created by chaithanya manas reddy on 20/10/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

class HintViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
   HintImageView.image   = UIImage(named:  "\(SnapModel.snap.hintImages[SnapModel.snap.selectedRow]).png")
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var HintImageView: UIImageView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
