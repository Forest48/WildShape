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
        resetSettings()
    }
    
    func resetSettings() {
        moon = false
        wantSwim = true
        wantFly = true
        wantClimb = true
        wantVanillaMove = true
    }
    
    
    // circle toggle
    @IBAction func toggleCircle(_ sender: UIButton) {
        if(!moon) {
            sender.setImage(UIImage(systemName: "moon.fill"), for: .normal)
            moon = true
            return
        }
        else if(moon) {
            sender.setImage(UIImage(systemName: "mountain.2.fill"), for: .normal)
            moon = false
            return
        }
        sender.setTitle("@~@", for: .normal)
    }
    
    var moon: Bool = false
    
    func makeList() {
        if(moon) {
            addMoonForms()
            return
        }
        takeMoonForms()
    }
    
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
    var wantDV: Bool = false
    var wantBS: Bool = false
    
    
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
    @IBAction func dvToggle(_ sender: UISwitch) {
        wantDV = !wantDV
    }
    @IBAction func bsToggle(_ sender: UISwitch) {
        wantBS = !wantBS
    }
    
    
    
    
    func filterList() {
        var newList: [Shape] = []
        if(wantVanillaMove || wantSwim || wantFly || wantClimb) {
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
        }
        if(newList.count == 0) {
            newList = shapeList
        }
        if(wantDV || wantBS) {
            if(wantDV) {
                newList.removeAll {$0.beastDarkVision == 0}
            }
            if(wantBS) {
                newList.removeAll {$0.beastBlindSight == 0}
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
    
        // the functions used in these functions can be found in SortFunctions
    func doMainSort() {
        var sortedList: [Shape] = []
        switch mainSort {
        case 0:
            sortedList = sortCR(baseList: shapeList)
        case 1:
            sortedList = sortName(baseList: shapeList)
        case 2:
            sortedList = sortHP(baseList: shapeList)
        default:
            return
        }
        shapeList = sortedList
    }
    func doSecondarySort() {
        var sortedList: [Shape] = []
        switch mainSort {
        case 0:
            sortedList = sortName(baseList: shapeList)
        case 1:
            sortedList = sortCR(baseList: shapeList)
        case 2:
            sortedList = sortHP(baseList: shapeList)
        default:
            return
        }
        shapeList = sortedList
    }
    
    
    
    
    func updateList() {
        makeList()
        filterList()
        doSort()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toList") {
            updateList()
            
        }
    }
}
