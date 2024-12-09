//
//  Shape.swift
//  wildshape
//
//  Created by Forest
//


class Shape {
    var beastName: String = "unnamed beast"
    var beastSize: Int = 2 // 0 for tiny, 1 for small, 2 for medium, etc.
    var beastType = "Beast"
    var beastCR: Int = 0 // -1 is half, -2 is quarter, -3 is eigth, -4 iszero
    var beastAC: Int = 0
    var beastHP: Int = 0
    
    var landSpeed: Int = 0
    var climbSpeed: Int = 0
    var swimSpeed: Int = 0
    var flySpeed: Int = 0
    
    var beastSTR: Int = 10
    var beastDEX: Int = 10
    var beastCON: Int = 10
    var beastINT: Int = 10
    var beastWIS: Int = 10
    var beastCHA: Int = 10
    
    var beastDarkVision: Int = 0
    var beastBlindSight: Int = 0
    
    var beastAbilities: [[String:String]] = [[:]]
    var beastActions: [[String:String]] = [[:]]
    
    // Default Beast
    init() {
    }
    
    // Shape(name: "", size: , ac: , hp: , cr: , speed: , cspeed: , sspeed: , fspeed: , str: , dex: , con: , int: , wis: , cha: , dv: , bs: , abilities: [], actions: [])
    init(name: String, size: Int, ac: Int, hp: Int, cr: Int, speed: Int, cspeed: Int, sspeed: Int, fspeed: Int, str:Int, dex: Int, con: Int, int: Int, wis: Int, cha: Int, dv: Int, bs: Int, abilities: [[String:String]], actions: [[String:String]]) {
        beastName = name
        beastSize = size
        beastAC = ac
        beastHP = hp
        landSpeed = speed
        climbSpeed = cspeed
        swimSpeed = sspeed
        flySpeed = fspeed
        beastSTR = str
        beastDEX = dex
        beastCON = con
        beastINT = int
        beastWIS = wis
        beastCHA = cha
        beastDarkVision = dv
        beastBlindSight = bs
        beastAbilities = abilities
        beastActions = actions
    }
    
}
