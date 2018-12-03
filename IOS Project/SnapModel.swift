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
    var problems:[Problem] = []
    var selectedProblem:Problem
    
    private init() {
        problems = [prob1, prob2, prob3, prob4, prob5, prob6, prob7]
        selectedProblem = problems[0]
    }
    
    subscript (index:Int) -> Problem {
        return problems[index]
    }
    
}

struct Problem {
    var name:String
    var algorithm:String
    var steps:String
    var hint:String
    var solution:String
}

let steps1 = "move forward 100 \nturn right 90 \nrepeat 4 times"
let steps2 = "Ask the user for n \nDraw a square \nMove to a random location \nRepeat steps 2-3 n times"
let steps3 = "so that squares on the left side of the screen appear red \nsquares on the right side of the screen appear green"
let steps4 = "Go to (0,0) \nSet direction to 90° \nMove 20 \nIf touching the wall (an edge), turn a random amount and make a snapping sound \nRepeat steps 2-3 forever"
let steps5 = "Have the computer store a random # between 1-10 in a variable, secret \nAsk the user for a guess, store it in another variable, guess \nif guess == secret, say \"Got it!\", otherwise say \"Nope, got it wrong\""
let steps6 = "Go to (-240,0) \nTurn east (90°) \nMove two steps \nTurn a random amount, between -5 to 5 \nRepeat steps 3-4 500 (or a gazillion) times"
let steps7 = "1.Ask the user for how many sides. \n2.Store it in a variable, n \n3.Repeat n times \nMove 100 steps \nTurn 360/n degrees"

let hintImages = ["square hint", "raining hint", "RG hint", "bounce hint", "guess hint", "einstein hint", "pinwheels hint"]
let solutionImages = ["square solution", "raining solution", "RG solution", "bounce solution", "guess solution", "einstein solution", "pinwheels solution"]

let prob1 = Problem(name: "Draw a Square", algorithm: "Draw a 100 x 100 square", steps: steps1, hint: hintImages[0], solution: solutionImages[0])
let prob2 = Problem(name: "It's Raining Squares!", algorithm: "Draw n 20x20 squares (where n is supplied by the user) in random locations about the screen (like raindrops, but square)", steps: steps2, hint: hintImages[1], solution: solutionImages[1])
let prob3 = Problem(name: "It's Raining Red and Green Square!", algorithm: "Modify your square-raining program \n", steps: steps3, hint: hintImages[2], solution: solutionImages[2])
let prob4 = Problem(name: "Bouncing Forever", algorithm: "Starting at the center, heading east, make a sprite move across the screen with sound, bouncing off the walls (literally)", steps: steps4, hint: hintImages[3], solution: solutionImages[3])
let prob5 = Problem(name: "Worst Guessing Game Ever", algorithm: "Guess a number that the computer is thinking of, between 1-10", steps: steps5, hint: hintImages[4], solution: solutionImages[4])
let prob6 = Problem(name: "Einstein Walks Into a Bar ...", algorithm: "A random walk is a path that consists of a random set of steps \nExamples: molecules moving through a liquid; path of a foraging animal; stock price; wave height; a drunkard; financial status of a gambler \nApplications in ecology, psychology, physics, computer science, chemistry, biology and economics  ", steps: steps6, hint: hintImages[5], solution: solutionImages[5])
let prob7 = Problem(name: "Polygons-Gateway to Pinwheels", algorithm: "Draw an n-gon, an n-sided figure", steps: steps7, hint: hintImages[6], solution: solutionImages[6])
