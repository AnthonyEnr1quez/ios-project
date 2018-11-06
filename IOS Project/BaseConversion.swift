//
//  BaseConversion.swift
//  IOS Project
//
//  Created by vijay kumar on 11/5/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import Foundation

struct BaseConversion {
    
    private(set) public var hexadecimal:String = ""
    private(set) public var decimal:String = ""
    private(set) public var binary:String = ""
    private(set) public var baseType:String = ""

    init(input: String, type: String) {
        self.baseType = type
        switch type {
        case "HEX":
            self.hexadecimal = input
        case "Decimal":
            self.decimal = input
        case "Binary":
            self.binary = input
        default:
            self.hexadecimal = input
        }
        print("baseType")

    }
    
    func get() -> String {
        print(baseType)
        return hexadecimal
    }
}
