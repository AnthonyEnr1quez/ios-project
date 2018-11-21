//
//  FlagView.swift
//  IOS Project
//
//  Created by ant on 11/20/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

class FlagView: UIView {
    
    @IBOutlet weak var view1 : UIView!
    
    var touchedArray:[Int]!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        let panGR = UIPanGestureRecognizer(target: self, action: #selector(panner(_:)))
        self.addGestureRecognizer(panGR)
    }
    
    @objc func panner(_ sender: UIPanGestureRecognizer) {
        if sender.state == UIGestureRecognizer.State.began {
            touchedArray = []
        }
        
        let panLocation = sender.location(in: self)
        print(panLocation)
        
        if !touchedArray.contains(1) && view1.frame.contains(panLocation) {
            touchedArray.append(1)
            print("touched view1")
        }
        
        if sender.state == UIGestureRecognizer.State.ended && touchedArray.count > 0 {
            for view in touchedArray {
                print(view)
            }
        }
    }


    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
