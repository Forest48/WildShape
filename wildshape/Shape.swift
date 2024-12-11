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
    
    // Shape(name: "", size: , ac: , hp: , cr: , speed: , cspeed: , sspeed: , fspeed: , str: , dex: , con: , int: , wis: , cha: , dv: , bs: , abilities: [], actions: [])
    init(name: String = "unnamed Beast", type: String = "Beast", size: Int = 2, ac: Int = 8, hp: Int = 1, cr: Int = -5, speed: Int = 0, cspeed: Int = 0, sspeed: Int = 0, fspeed: Int = 0, str: Int = 10, dex: Int = 10, con: Int = 10, int: Int = 10, wis: Int = 10, cha: Int = 10, dv: Int = 0, bs: Int = 0, abilities: [[String:String]] = [], actions: [[String:String]] = []) {
        beastName = name
        beastType = type
        beastSize = size
        beastAC = ac
        beastHP = hp
        beastCR = cr
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
    
    func readSize()-> String{
        switch beastSize {
        case 0:
            return "Tiny"
        case 1:
            return "Small"
        case 2:
            return "Medium"
        case 3:
            return "Large"
        case 4:
            return "Huge"
        case 5:
            return "Gargantuan"
        default:
            return ""
        }
    }
    
    func readCR()-> String{
        switch beastCR {
        case -1:
            return "1/2"
        case -2:
            return "1/4"
        case -3:
            return "1/8"
        case -4:
            return "0"
        default:
            return "\(beastCR)"
        }
    }
    
    func readModifier(abil: String)-> String{
        var score: Int
        switch abil{
        case "STR":
            score = beastSTR
            break
        case "DEX":
            score = beastDEX
            break
        case "CON":
            score = beastCON
            break
        case "INT":
            score = beastINT
            break
        case "WIS":
            score = beastWIS
            break
        case "CHA":
            score = beastCHA
            break
        default:
            return "ERR"
        }
        if(score >= 10) {
            let mod = (score - 10) / 2
            return "+\(mod)"
        }
        switch score {
        case 1:
            return "-5"
        case 2...3:
            return "-4"
        case 4...5:
            return "-3"
        case 6...7:
            return "-2"
        case 8...9 :
            return "-1"
        default:
            return "ERR"
        }
    }
    
    func readVision()-> String {
        var returnString = ""
        if(beastDarkVision > 0) {
            returnString += "DarkVision: \(beastDarkVision) ft\t\t"
        }
        if(beastBlindSight > 0) {
            returnString += "BlindSight: \(beastBlindSight) ft"
        }
        returnString += "\n\n"
        return returnString
    }
    
    func readMovement()-> String {
        var returnString = ""
        if(landSpeed > 0) {
            returnString += "Movement: \(landSpeed)ft\t\t"
        }
        if(climbSpeed > 0) {
            returnString += "Climbing: \(climbSpeed)ft\t\t"
        }
        if(swimSpeed > 0) {
            returnString += "Swim: \(swimSpeed)ft\t\t"
        }
        if(flySpeed > 0) {
            returnString += "Fly: \(flySpeed)ft"
        }
        returnString += "\n\n"
        return returnString
    }
    
    func readAbilities()-> String {
        var returnString = ""
        if(beastAbilities.count != 0) {
            returnString += "Abilities:\n"
        }
        for item in beastAbilities {
            for(abilName, desc) in item {
                returnString += "*\(abilName)* \(desc)\n"
            }
        }
        if(returnString != "") {
            returnString += "\n"
        }
        return returnString
    }
    
    func readActions()-> String {
        var returnString = ""
        if(beastActions.count != 0) {
            returnString += "Actions:\n"
        }
        for item in beastActions {
            for(actName, desc) in item {
                returnString += "*\(actName)* \(desc)\n"
            }
        }
        return returnString
    }
}
