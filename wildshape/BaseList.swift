//
//  BaseList.swift
//  wildshape
//
//  Created by Forest
//

import Foundation

func makeDefaultList()-> [Shape] {
    var newList: [Shape] = []
    newList.append(Shape(name: "Dire Wolf", size: 4, ac: 14, hp: 37, cr: 1, speed: 50, cspeed: 0, sspeed: 0, fspeed: 0, str: 17, dex: 15, con: 15, int: 3, wis: 12, cha: 7, dv: 0, bs: 0, abilities: [["Keen Hearing and Smell": "you gain advantage on Perception checks that rely on hearing or smell."], ["Pack Tactics": "you have advantage on attack rolls against a creature if at least one of your allies is within 5 feet and isn't incapacitated."]], actions: [["Bite": "+5 to hit, reach 5 ft.  On a hit deal 2d6+3 piercing damage, and the target must succeed on a DC13 strength saving throw or become prone."]]))
    newList.append(Shape(name: "Reef Shark", size: 3, ac: 12, hp: 22, cr: -1, speed: 0, cspeed: 0, sspeed: 40, fspeed: 0, str: 14, dex: 13, con: 13, int: 1, wis: 10, cha: 4, dv: 0, bs: 30, abilities: [["Pack Tactics": "you gain advantage on attack rolls if at least one of your allies is within 5 feet and isn't incapacitated."], ["Water Breathing": "You can only beathe underwater."]], actions: [["Bite": "+4 to hit, reach 5 ft.  On a hit dead 1d8 piercing damaage."]]))
    newList.append(Shape(name: "Giant Bat", size: 4, ac: 13, hp: 22, cr: -2, speed: 10, cspeed: 0, sspeed: 0, fspeed: 60, str: 15, dex: 16, con: 11, int: 2, wis: 12, cha: 6, dv: 0, bs: 60, abilities: [["Echolocation": "You cannot use blindsight while deafened."], ["Keen Hearing": "you have advantage on perception checks that rely on hearing."]], actions: [["Bite": "+4 to hit, reach 5 ft.  On a hit deal 1d6 piercing damage."]]))
    return newList
}
