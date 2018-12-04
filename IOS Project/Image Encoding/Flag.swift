//
//  Flag.swift
//  IOS Project
//
//  Created by Anthony Enriquez on 11/27/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import Foundation
import UIKit

// struct that holds information about a country's flag and how to color it using run length encoding
struct Flag {
    let country:String
    let runLengthEncoding:[Int]
    let hexLabels:[String]
    private(set) var colors:[UIColor]!
    private(set) var decodedFlag:[UIColor]!
    private(set) var encodingDescription:String!
    
    init(_ country:String, _ runLengthEncoding:[Int], _ hexLabels:[String]) {
        self.country = country
        self.runLengthEncoding = runLengthEncoding
        self.hexLabels = hexLabels
        self.setupColors()
        self.setupDecodedFlag()
        self.setupEncodingDescription()
    }
    
    // will take the hex encoding of flag and convert to correct colors
    private mutating func setupColors() {
        var generatedColors:[UIColor] = []
        for label in hexLabels {
            let hexValues = label.components(separatedBy: " ")
            var decimalValues:[CGFloat] = []
            for value in hexValues {
                decimalValues.append(CGFloat(Int(value, radix:16)!))
            }
            generatedColors.append(UIColor(red: decimalValues[0]/255.0, green: decimalValues[1]/255.0, blue: decimalValues[2]/255.0, alpha: 1.0))
        }
        
        colors = generatedColors
    }
    
    // creates an array filled with correct color order
    private mutating func setupDecodedFlag() {
        var fullSequence:[UIColor] = []
        for (index, value) in runLengthEncoding.enumerated() {
            fullSequence.append(contentsOf: repeatElement(colors[index % 3], count: value))
        }
        
        decodedFlag = fullSequence
    }
    
    // pairs run length encoding value with color index
    private mutating func setupEncodingDescription() {
        var desc:String = ""
        for (index, value) in runLengthEncoding.enumerated() {
            desc.append("\(value):\(index % 3 + 1) ")
        }
        encodingDescription = desc
    }
}

// singleton used to hold an array of flags
struct FlagRepository {
    private static var _shared:FlagRepository!
    
    static var shared:FlagRepository {
        if _shared == nil {
            _shared = FlagRepository()
        }
        return _shared
    }
    
    private init() {
        self.flags = [hungary, italy, armenia, belgium, argentina, bolivia, colombia, dominicanRepublic, estonia, iceland, laos, lebanon, maldives, nauru, norway]
    }
    
    private var flags:[Flag]
    
    // return random flag
    func random() -> Flag {
        return flags.randomElement()!
    }
    
    // get flag at index
    subscript(index:Int) -> Flag {
        return flags[index]
    }
    
}

// just a whole bunch of flags, in a future update could store them using Core Data and add ability to make flags
// could convert labels and encoding to strings, then store as json objects in text files
private let verticalEncoding = [5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]
private let horizontalEncoding = [45, 45, 45]

private let hungaryLabels = ["CD 2A 3E", "FF FF FF", "43 6F 4D"]
private let hungary = Flag("Hungary",horizontalEncoding, hungaryLabels)

private let italyLabels = ["00 92 46", "FF FF FF", "CE 2B 37"]
private let italy = Flag("Italy",verticalEncoding, italyLabels)

private let armeniaLabels = ["D9 00 12", "00 33 A0", "F2 A8 00"]
private let armenia = Flag("Armenia", horizontalEncoding, armeniaLabels)

private let belgiumLabels = ["00 00 00", "FA E0 42", "ED 29 39"]
private let belgium = Flag("Belgium", verticalEncoding, belgiumLabels)

private let argentinaLabels = ["75 AA DB", "FF FF FF", "FC BF 49"]
private let argentinaEncoding = [45,7,1,0,13,3,0,13,1,0,7,0,45]
private let argentina = Flag("Argentina", argentinaEncoding, argentinaLabels)

private let boliviaLabels = ["D5 2B 1E", "F9 E3 00", "00 79 34"]
private let bolivia = Flag("Bolivia", horizontalEncoding, boliviaLabels)

private let colombiaLabels = ["FC D1 16", "00 38 93", "CE 11 26"]
private let colombiaEncoding = [75,30,30]
private let colombia = Flag("Colombia", colombiaEncoding, colombiaLabels)

private let dominicanRepublicLabels = ["00 2D 62","FF FF FF","CE 11 26"]
private let dominicanRepublicEncoding = [6,3,6,6,3,6,6,3,6,0,6,0,1,1,1,0,27,1,0,1,0,1,6,6,0,3,0,6,0,6,0,3,0,6,0,6,0,3,0,6]
private let dominicanRepublic = Flag("Dominican Republic", dominicanRepublicEncoding, dominicanRepublicLabels)

private let estoniaLabels = ["00 72 CE", "00 00 00", "FF FF FF"]
private let estonia = Flag("Estonia", horizontalEncoding, estoniaLabels)

private let icelandLabels = ["02 52 9C", "FF FF FF", "DC 1E 35"]
private let icelandEncoding = [3,1,1,0,1,0,12,1,1,0,1,0,12,1,1,0,1,0,9,4,1,0,10,15,0,4,1,0,10,0,3,1,1,0,1,0,12,1,1,0,1,0,12,1,1,0,1,0,9]
private let iceland = Flag("Iceland", icelandEncoding, icelandLabels)

private let laosLabels = ["CE 11 26", "00 28 68", "FF FF FF"]
private let laosEncoding = [30,21,3,0,12,3,0,12,3,0,21,0,30]
private let laos = Flag("Laos", laosEncoding, laosLabels)

private let lebanonLabels = ["ED 1C 24", "FF FF FF", "00 A6 51"]
private let lebanonEncoding = [30,7,1,0,13,3,0,11,5,0,12,1,0,13,3,0,6,0,30]
private let lebanon = Flag("Lebanon", lebanonEncoding, lebanonLabels)

private let maldivesLabels = ["D2 10 34", "00 7E 3A", "FF FF FF"]
private let maldivesEncoding = [32,5,1,0,5,0,4,4,1,0,6,0,4,4,1,0,6,0,4,4,1,0,6,0,4,5,1,0,5,0,32]
private let maldives = Flag("Maldives", maldivesEncoding, maldivesLabels)

private let nauruLabels = ["00 2B 7F", "FF C6 1E", "FF FF FF"]
private let nauruEncoding = [60,15,0,3,0,1,13,0,3,13,0,1,26]
private let nauru = Flag("Nauru", nauruEncoding, nauruLabels)

private let norwayLabels = ["EF 2B 2D", "FF FF FF", "00 28 68"]
private let norway = Flag("Norway", icelandEncoding, norwayLabels)
