//
//  Flag.swift
//  IOS Project
//
//  Created by ant on 11/27/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import Foundation
import UIKit

private let hungaryRed = UIColor(red: 205.0/255.0, green: 42.0/255.0, blue: 62.0/255.0, alpha: 1.0)
private let hungaryGreen = UIColor(red: 67/255.0, green: 111/255.0, blue: 77/255.0, alpha: 1.0)
private let hungaryLabels = ["CD 2A 3E", "FF FF FF", "43 6F 4D"]
private let hungary = Flag(colors: [hungaryRed, .white, hungaryGreen], runLengthEncoding: [45,45,45], hexLabels: hungaryLabels)

//private let italyRed = UIColor(red: /255.0, green: /255.0, blue: /255.0, alpha: 1.0)
private let italyRed = UIColor(red: 206/255.0, green: 42/255.0, blue: 55/255.0, alpha: 1.0)
private let italyGreen = UIColor(red: 0/255.0, green: 146/255.0, blue: 70/255.0, alpha: 1.0)
private let italyLabels = ["CE 2B 37", "FF FF FF", "CE 2B 37"]
private let italyEncoding = [5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]
private let italy = Flag(colors: [italyRed, .white, italyGreen], runLengthEncoding: italyEncoding, hexLabels: italyLabels)



struct Flag {
    var colors:[UIColor]
    var runLengthEncoding:[Int]
    var hexLabels:[String]
    var decodedFlag:[UIColor] {
        get {
            var fullSequence:[UIColor] = []
            
            for (index, value) in runLengthEncoding.enumerated() {
                fullSequence.append(contentsOf: repeatElement(colors[index % 3], count: value))
            }
            
            return fullSequence
        }
    }
}

struct FlagRepository {
    static var flagRepository:FlagRepository = FlagRepository()
    var flags:[Flag]
    
    private init() {
        self.flags = [hungary]
    }
    
    subscript(index:Int) -> Flag {
        return flags[index]
    }
}
