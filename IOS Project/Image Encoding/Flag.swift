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
    var country:String
    var colors:[UIColor]
    var runLengthEncoding:[Int]
    var hexLabels:[String]
    
    // creates an array filled with correct color order
    var decodedFlag:[UIColor] {
            var fullSequence:[UIColor] = []
            for (index, value) in runLengthEncoding.enumerated() {
                fullSequence.append(contentsOf: repeatElement(colors[index % 3], count: value))
            }
            return fullSequence
    }
    
    // pairs run length encoding value with color index
    var encodingDescription:String {
            var desc:String = ""
            for (index, value) in runLengthEncoding.enumerated() {
                desc.append("\(value):\(index % 3 + 1) ")
            }
            return desc
    }
}

// used to hold an array of flags
struct FlagRepository {
    static var flagRepository:FlagRepository = FlagRepository()
    var flags:[Flag]
    
    private init() {
        self.flags = [hungary, italy, armenia, belgium, argentina, bolivia, colombia, dominicanRepublic, estonia, iceland, laos, lebanon, maldives, nauru, norway]
    }
    
    subscript(index:Int) -> Flag {
        return flags[index]
    }
    
}

// just a whole bunch of flags, in a future update could store them using Core Data and add ability to make flags
private let verticalEncoding = [5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]
private let horizontalEncoding = [45, 45, 45]

private let hungaryLabels = ["CD 2A 3E", "FF FF FF", "43 6F 4D"]
private let hungary = Flag(country: "Hungary", colors: convert(hungaryLabels), runLengthEncoding: horizontalEncoding, hexLabels: hungaryLabels)

private let italyLabels = ["00 92 46", "FF FF FF", "CE 2B 37"]
private let italy = Flag(country: "Italy", colors: convert(italyLabels), runLengthEncoding: verticalEncoding, hexLabels: italyLabels)

private let armeniaLabels = ["D9 00 12", "00 33 A0", "F2 A8 00"]
private let armenia = Flag(country: "Armenia", colors: convert(armeniaLabels), runLengthEncoding: horizontalEncoding, hexLabels: armeniaLabels)

private let belgiumLabels = ["00 00 00", "FA E0 42", "ED 29 39"]
private let belgium = Flag(country: "Belgium", colors: convert(belgiumLabels), runLengthEncoding: verticalEncoding, hexLabels: belgiumLabels)

private let argentinaLabels = ["75 AA DB", "FF FF FF", "FC BF 49"]
private let argentinaEncoding = [45,7,1,0,13,3,0,13,1,0,7,0,45]
private let argentina = Flag(country: "Argentina", colors: convert(argentinaLabels), runLengthEncoding: argentinaEncoding, hexLabels: argentinaLabels)

private let boliviaLabels = ["D5 2B 1E", "F9 E3 00", "00 79 34"]
private let bolivia = Flag(country: "Bolivia", colors: convert(boliviaLabels), runLengthEncoding: horizontalEncoding, hexLabels: boliviaLabels)

private let colombiaLabels = ["FC D1 16", "00 38 93", "CE 11 26"]
private let colombiaEncoding = [75,30,30]
private let colombia = Flag(country: "Colombia", colors: convert(colombiaLabels), runLengthEncoding: colombiaEncoding, hexLabels: colombiaLabels)

private let dominicanRepublicLabels = ["00 2D 62","FF FF FF","CE 11 26"]
private let dominicanRepublicEncoding = [6,3,6,6,3,6,6,3,6,0,6,0,1,1,1,0,27,1,0,1,0,1,6,6,0,3,0,6,0,6,0,3,0,6,0,6,0,3,0,6]
private let dominicanRepublic = Flag(country: "Dominican Republic", colors: convert(dominicanRepublicLabels), runLengthEncoding: dominicanRepublicEncoding, hexLabels: dominicanRepublicLabels)

private let estoniaLabels = ["00 72 CE", "00 00 00", "FF FF FF"]
private let estonia = Flag(country: "Estonia", colors: convert(estoniaLabels), runLengthEncoding: horizontalEncoding, hexLabels: estoniaLabels)

private let icelandLabels = ["02 52 9C", "FF FF FF", "DC 1E 35"]
private let icelandEncoding = [3,1,1,0,1,0,12,1,1,0,1,0,12,1,1,0,1,0,9,4,1,0,10,15,0,4,1,0,10,0,3,1,1,0,1,0,12,1,1,0,1,0,12,1,1,0,1,0,9]
private let iceland = Flag(country: "Iceland", colors: convert(icelandLabels), runLengthEncoding: icelandEncoding, hexLabels: icelandLabels)

private let laosLabels = ["CE 11 26", "00 28 68", "FF FF FF"]
private let laosEncoding = [30,21,3,0,12,3,0,12,3,0,21,0,30]
private let laos = Flag(country: "Laos", colors: convert(laosLabels), runLengthEncoding: laosEncoding, hexLabels: laosLabels)

private let lebanonLabels = ["ED 1C 24", "FF FF FF", "00 A6 51"]
private let lebanonEncoding = [30,7,1,0,13,3,0,11,5,0,12,1,0,13,3,0,6,0,30]
private let lebanon = Flag(country: "Lebanon", colors: convert(lebanonLabels), runLengthEncoding: lebanonEncoding, hexLabels: lebanonLabels)

private let maldivesLabels = ["D2 10 34", "00 7E 3A", "FF FF FF"]
private let maldivesEncoding = [32,5,1,0,5,0,4,4,1,0,6,0,4,4,1,0,6,0,4,4,1,0,6,0,4,5,1,0,5,0,32]
private let maldives = Flag(country: "Maldives", colors: convert(maldivesLabels), runLengthEncoding: maldivesEncoding, hexLabels: maldivesLabels)

private let nauruLabels = ["00 2B 7F", "FF C6 1E", "FF FF FF"]
private let nauruEncoding = [60,15,0,3,0,1,13,0,3,13,0,1,26]
private let nauru = Flag(country: "Nauru", colors: convert(nauruLabels), runLengthEncoding: nauruEncoding, hexLabels: nauruLabels)

private let norwayLabels = ["EF 2B 2D", "FF FF FF", "00 28 68"]
private let norway = Flag(country: "Norway", colors: convert(norwayLabels), runLengthEncoding: icelandEncoding, hexLabels: norwayLabels)

// couldn't figure out how to do this inside the struct efficently, tried as computed property but had to convert each time flag was loaded
// will take the hex encoding of flag and convert to correct colors
func convert(_ hexLabels:[String]) -> [UIColor] {
    var generatedColors:[UIColor] = []
    
    for label in hexLabels {
        let hexValues = label.components(separatedBy: " ")
        var decimalValues:[CGFloat] = []
        for value in hexValues {
            decimalValues.append(CGFloat(Int(value, radix:16)!))
        }
        generatedColors.append(UIColor(red: decimalValues[0]/255.0, green: decimalValues[1]/255.0, blue: decimalValues[2]/255.0, alpha: 1.0))
    }
    
    return generatedColors
}
