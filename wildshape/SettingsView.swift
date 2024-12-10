//
//  SettingsView.swift
//  wildshape
//
//  Created by Forest
//

import UIKit

class SettingsView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // circle toggle
    @IBAction func toggleCircle(_ sender: UIButton) {
        if(!moon) {
            sender.setTitle("To Land", for: .normal)
            moon = true
            return
        }
        else if(moon) {
            sender.setTitle("To Moon", for: .normal)
            moon = false
            return
        }
        sender.setTitle("@~@", for: .normal)
    }
    
    var moon: Bool = false
    
    func addMoonForms() {
        shapeList = addMoonList(oldList: shapeList)
    }
    
    func takeMoonForms() {
        shapeList = makeDefaultList()
    }
    
    // filters
    var wantSwim: Bool = true
    var wantFly: Bool = true
    var wantClimb: Bool = true
    var wantVanillaMove: Bool = true
    
    @IBAction func swimToggle(_ sender: UISwitch) {
        wantSwim = !wantSwim
    }
    @IBAction func flyToggle(_ sender: UISwitch) {
        wantFly = !wantFly
    }
    @IBAction func climbToggle(_ sender: UISwitch) {
        wantClimb = !wantClimb
    }
    @IBAction func vanillaToggle(_ sender: UISwitch) {
        wantVanillaMove = !wantVanillaMove
    }
    
    func filterList() {
        var newList: [Shape] = []
        for beast in shapeList {
            if(wantVanillaMove && beast.landSpeed > 0) {
                newList.append(beast)
            }
            else if(wantSwim && beast.swimSpeed > 0) {
                newList.append(beast)
            }
            else if(wantFly && beast.flySpeed > 0) {
                newList.append(beast)
            }
            else if(wantClimb && beast.climbSpeed > 0) {
                newList.append(beast)
            }
        }
        shapeList = newList
    }
    
    
    // sort preferences
    var mainSort: Int = 0
    var secondSort: Int = 0
    
    func doSort() {
        doSecondarySort()
        doMainSort()
    }
    
    func doMainSort() {
        var sortedList: [Shape] = []
        switch mainSort {
        case 0:
            sortedList = shapeList.sorted {$0.beastCR < $1.beastCR}
        case 1:
            sortedList = shapeList.sorted {$0.beastName < $1.beastName}
        case 2:
            sortedList = shapeList.sorted {$0.beastHP > $1.beastHP}
        default:
            return
        }
        shapeList = sortedList
    }
    
    func doSecondarySort() {
        var sortedList: [Shape] = []
        switch mainSort {
        case 0:
            sortedList = shapeList.sorted {$0.beastName < $1.beastName}
        case 1:
            sortedList = shapeList.sorted {$0.beastCR < $1.beastCR}
        case 2:
            sortedList = shapeList.sorted {$0.beastHP > $1.beastHP}
        default:
            return
        }
        shapeList = sortedList
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toList") {
            if(moon) {
                addMoonForms()
            }
            else {
                takeMoonForms()
            }
            filterList()
            doSort()
            
        }
    }
}
