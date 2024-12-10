//
//  SortFunctions.swift
//  wildshape
//
//  Created by Forest.
//

import Foundation


func sortName(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastName < $1.beastName}
}

func sortCR(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastCR < $1.beastCR}
}

func sortHP(baseList: [Shape])-> [Shape] {
    return baseList.sorted {$0.beastHP > $1.beastHP}
}

