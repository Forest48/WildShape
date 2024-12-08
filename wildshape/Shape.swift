//
//  Shape.swift
//  wildshape
//
//  Created by Forest
//


class Shape {
    var beastName: String
    var size: Int = 2 // 0 for tiny, 1 for small, 2 for medium, etc.
    var type = "Beast"
    var cr: Int = 0 // -1 is half, -2 is quarter, -3 is eigth
    var ac: Int = 0
    var hp: Int = 0
    
    var landSpeed: Int = 0
    var climbSpeed: Int = 0
    var swimSpeed: Int = 0
    var flySpeed: Int = 0
    
    var str: Int = 10
    var dex: Int = 10
    var con: Int = 10
    var int: Int = 10
    var wis: Int = 10
    var cha: Int = 10
    
    var darkVision: Int = 0
    var blindSight: Int = 0
    
    var abilities: [[String:String]]
    var actions: [[String:String]]
    
    // Default Beast
    init() {
        beastName = "Default Beast"
        abilities = [[:]]
        actions = [["Default Creature":"If you see his creature something is horribly wrong.  Your character takes 1 psychic damage per turn until they die.  When a character dies in this way, they cannot be revived"]]
    }
    
    init(name: String, sz: Int, ac: Int, hp: Int, cr: Int, speed: Int, cspeed: Int, sspeed: Int, fspeed: Int, str:Int, dex: Int, con: Int, int: Int, wis: Int, cha: Int, dv: Int, bs: Int, abil: [[String:String]], acts: [[String:String]]) {
        beastName = name
        size = sz
        self.ac = ac
        self.hp = hp
        landSpeed = speed
        climbSpeed = cspeed
        swimSpeed = sspeed
        flySpeed = fspeed
        self.str = str
        self.dex = dex
        self.con = con
        self.int = int
        self.wis = wis
        self.cha = cha
        darkVision = dv
        blindSight = bs
        abilities = abil
        actions = acts
    }
    
}
