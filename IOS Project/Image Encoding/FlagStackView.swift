//
//  FlagStackView.swift
//  IOS Project
//
//  Created by ant on 11/21/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

class FlagStackView: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupFlag()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupFlag()
    }

    // adds constraints to UIView for pixel representation
    private func setupPixel(color:UIColor, height:CGFloat, width:CGFloat) -> UIView {
        let pixel = UIView()
        pixel.backgroundColor = color
        pixel.heightAnchor.constraint(equalToConstant: height).isActive = true
        pixel.widthAnchor.constraint(equalToConstant: width).isActive = true
        pixel.translatesAutoresizingMaskIntoConstraints = false
        
        return pixel
    }
    
    // adds pixels for each row in the flag and adds constraints
    private func setupFlag() {
        for i in 0 ..< 9 {
            let row = UIStackView()
            for j in 0 ..< 15 {
                let pixel = setupPixel(color: .red, height: 25, width: 25)
                row.addArrangedSubview(pixel)
            }
            
            addArrangedSubview(row)
            row.axis = .horizontal
            row.distribution = .fill
            row.spacing = 5.0
            row.translatesAutoresizingMaskIntoConstraints = false
            row.backgroundColor = .black
            row.centerXAnchor.constraint(equalTo: row.centerXAnchor).isActive = true
            row.centerYAnchor.constraint(equalTo: row.centerYAnchor).isActive = true
        }
        axis = .vertical
        distribution = .fill
        spacing = 5.0
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .gray
    }
}
