//
//  SortFunctions.swift
//  wildshape
//
//  Created by Forest.
//

import Foundation


// normal order
func sortName(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastName < $1.beastName}
}

func sortCR(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastCR < $1.beastCR}
}

func sortHP(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastHP > $1.beastHP}
}

func sortSTR(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastSTR > $1.beastSTR}
}

func sortDEX(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastDEX > $1.beastDEX}
}

func sortCON(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastCON > $1.beastCON}
}

func sortSpeed(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.landSpeed > $1.landSpeed}
}

func sortSspeed(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.swimSpeed > $1.swimSpeed}
}

func sortFspeed(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.flySpeed > $1.flySpeed}
}

func sortCspeed(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.climbSpeed > $1.climbSpeed}
}

func sortAC(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastAC > $1.beastAC}
}

// reversed order
func sortNameRev(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastName > $1.beastName}
}

func sortCRrev(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastCR > $1.beastCR}
}

func sortHPrev(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastHP < $1.beastHP}
}

func sortSTRrev(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastSTR < $1.beastSTR}
}

func sortDEXrev(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastDEX < $1.beastDEX}
}

func sortCONrev(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastCON < $1.beastCON}
}

func sortSpeedRev(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.landSpeed < $1.landSpeed}
}

func sortSspeedRev(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.swimSpeed < $1.swimSpeed}
}

func sortFspeedRev(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.flySpeed < $1.flySpeed}
}

func sortCspeedRev(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.climbSpeed < $1.climbSpeed}
}

func sortACrev(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastAC < $1.beastAC}
}
