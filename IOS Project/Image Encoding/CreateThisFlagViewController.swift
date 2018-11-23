//
//  CreateThisFlagViewController.swift
//  IOS Project
//
//  Created by ant on 11/20/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

class CreateThisFlagViewController: UIViewController {
    
    @IBOutlet weak var flag: FlagStackView!
    
    var touchedViews:[UIView]!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

 
    // if pixel is panned across, change its color
    @IBAction func panGR(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == UIGestureRecognizer.State.began {
            touchedViews = []
        }
        
        let panLocation = sender.location(in: self.view)
        print(panLocation)
        
        for row in flag.subviews as! [UIStackView] {
            for view in row.subviews as [UIView] {
                let convert = row.convert(view.frame, to: self.view)
                if convert.contains(panLocation) && !touchedViews.contains(view) {
                    touchedViews.append(view)
                    print("touched")
                }
            }
        }
        
        if sender.state == UIGestureRecognizer.State.ended && touchedViews.isEmpty == false {
            for view in touchedViews {
                print(view)
                if view.backgroundColor == .red {
                    view.backgroundColor = .blue
                } else {
                    view.backgroundColor = .red
                }
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

