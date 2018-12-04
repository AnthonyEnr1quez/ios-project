//
//  BaseConversion.swift
//  IOS Project
//
//  Created by vijay kumar on 11/5/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import Foundation

struct BaseConversion {
    
    static var instance:BaseConversion = BaseConversion()
    
    private(set) public var hexadecimal:String = ""
    private(set) public var decimal:String = ""
    private(set) public var binary:String = ""
    private(set) public var baseType:String = ""

    init() {}
    
    mutating func convert(input: String, type: String) {
        baseType = type
        switch type {
        case "HEX":
            hexadecimal = input
            decimal = String(Int(input, radix: 16)!)
            binary = String(Int(input, radix: 16)!, radix: 2)
        case "Decimal":
            decimal = input
            binary = String(Int(input)!, radix: 2)
            hexadecimal = String(Int(input)!, radix: 16)
        case "Binary":
            binary = input
            hexadecimal = String(Int(input, radix: 2)!, radix: 16)
            decimal = String(Int(input, radix: 2)!)
        default: ()
        }
        
    }
    
    func getHexadecimal() -> String {
        return hexadecimal
    }
    
    func getDecimal() -> String {
        return decimal
    }
    
    func getBinary() -> String {
        return binary
    }
    
    // checks input to make sure wrong input does not crash app
    func checkInput(input:String, type:String) -> Bool {
        switch type {
        case "HEX":
            let acceptedInputs:NSCharacterSet = NSCharacterSet(charactersIn: "abcdefABCDEF")
            if input.rangeOfCharacter(from: acceptedInputs.inverted) != nil {
                return false
            } else {
                return true
            }
        case "Decimal":
            if Int(input) == nil {
                return false
            } else {
                return true
            }
        case "Binary":
            let acceptedInputs:NSCharacterSet = NSCharacterSet(charactersIn: "01")
            
            if input.rangeOfCharacter(from: acceptedInputs.inverted) != nil {
                return false
            } else {
                return true
            }
        default:
            return false
        }
    }
}
