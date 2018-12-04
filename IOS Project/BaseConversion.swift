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
    
    // This method handles the conversion of the types
    mutating func convert(input: String, type: String) {
        baseType = type
        
        // switch case to convert the values other than the input basing on the type
        switch type {
        
        // if the input is "HEX"
        case "HEX":
            hexadecimal = input
            decimal = String(Int(input, radix: 16)!)
            binary = String(Int(input, radix: 16)!, radix: 2)
        
        // if the input is "Decimal"
        case "Decimal":
            decimal = input
            binary = String(Int(input)!, radix: 2)
            hexadecimal = String(Int(input)!, radix: 16)
        
        // if the input is "Binary"
        case "Binary":
            binary = input
            hexadecimal = String(Int(input, radix: 2)!, radix: 16)
            decimal = String(Int(input, radix: 2)!)
        default: ()
        }
        
    }
    
    // The following methods return respective values
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
            let acceptedInputs:NSCharacterSet = NSCharacterSet(charactersIn: "abcdefABCDEF0123456789")
            if input.rangeOfCharacter(from: acceptedInputs.inverted) != nil || input.count >= 8 {
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
