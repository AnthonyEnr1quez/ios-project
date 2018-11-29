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

    init () {
    
    }
    
    init (input: String, type: String) {
        self.baseType = type
        switch type {
        case "HEX":
            self.hexadecimal = input
            self.decimal = String(Int(input, radix: 16)!)
            self.binary = String(Int(input, radix: 16)!, radix: 2)
        case "Decimal":
            if (Int(input, radix: 2) != nil) {
                self.decimal = input
                self.binary = String(Int(input)!, radix: 2)
                self.hexadecimal = String(Int(input)!, radix: 16)
            }
        case "Binary":
            if (Int(input, radix: 2) != nil) {
                self.binary = input
                self.hexadecimal = String(Int(input, radix: 2)!, radix: 16)
                self.decimal = String(Int(input, radix: 2)!)
            }
        default:
            self.hexadecimal = input
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

    
}
