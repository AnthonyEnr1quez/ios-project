//
//  snapModel.swift
//  IOS Project
//
//  Created by student on 10/28/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import Foundation
struct SnapModel {
    static var snap = SnapModel()
//    var names:[String] = ["Draw a Square", "It's Raining Squares!", "Modification: It's Raining Red and Green Squares!", "Bouncing Forever", "Worst Guessing Game Ever", "Einstein Walks Into a Bar ...", "Polygons-Gateway to Pinwheels"]
//    var algorithms:[String] = ["Draw a 100 x 100 square", "Draw n 20x20 squares (where n is supplied by the user) in random locations about the screen (like raindrops, but square)", "Modify your square-raining program so that\nsquares on the left side of the screen appear red\nsquares on the right side of the screen appear green", "Starting at the center, heading east, make a sprite move across the screen with sound, bouncing off the walls (literally)", "Guess a number that the computer is thinking of, between 1-10." ]
//
    var hintImages:[String]
    var solutionImages:[String]
    var problems:[Problem] = []
    var selectedRow:Int
    
    init() {
        let exProblemSteps = "Ask the user for n \nDraw a square \nMove to a random location \nRepeat steps 2-3 n times"
        let exampleProblem = Problem(name: "It's Raining Squares!", algorithm: "Draw n 20x20 squares (where n is supplied by the user) in random locations about the screen (like raindrops, but square)", steps: exProblemSteps)
        
        problems.append(exampleProblem)
        hintImages = ["square hint", "raining hint", "RG hint", "bounce hint", "guess hint", "einstein hint", "pinwheels hint"]
        solutionImages = ["square solution", "raining solution", "RG solution", "bounce solution", "guess solution", "einstein solution", "pinwheels solution"]
        selectedRow = 0
    }
    
    // TODO: change to better implementation
    func getProblem(_ index:Int) -> Problem {
        return problems[index]
    }
}
    
struct Problem {
    var name:String
    var algorithm:String
    var steps:String
}
