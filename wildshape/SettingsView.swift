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
        }
        else {
            takeMoonForms()
        }
        shapeList = filterByDlv(baseList: shapeList)
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
        else if(newList.count == 0) {
            newList = shapeList
        }
        if(wantDV || wantBS) {
            if(wantDV && wantBS) {
                newList.removeAll {$0.beastDarkVision == 0 || $0.beastBlindSight == 0}
            }
            else {
                if(wantDV) {
                    newList.removeAll {$0.beastDarkVision == 0}
                }
                if(wantBS) {
                    newList.removeAll {$0.beastBlindSight == 0}
                }
            }
        }
        
        shapeList = newList
    }
    
    
    // sort preferences
    var mainSort: Int = 0
    var secondSort: Int = 1
    let optDisplay = ["CR", "Name", "AC", "HP", "STR", "DEX", "CON", "speed", "swim speed", "fly speed", "climb speed"]
    var numOptions: Int = 11
    var reverseSort1: Bool = false
    var reverseSort2: Bool = false
    
    func doFullSort() {
        doSort(optNum: secondSort, rev: reverseSort2)
        doSort(optNum: mainSort, rev: reverseSort1)
    }
    
        // the functions used in these functions can be found in SortFunctions
    func doSort(optNum: Int, rev: Bool) {
        var sortedList: [Shape] = []
        if(!rev) {
            switch optNum {
            case 0:
                sortedList = sortCR(baseList: shapeList)
            case 1:
                sortedList = sortName(baseList: shapeList)
            case 2:
                sortedList = sortAC(baseList: shapeList)
            case 3:
                sortedList = sortHP(baseList: shapeList)
            case 4:
                sortedList = sortSTR(baseList: shapeList)
            case 5:
                sortedList = sortDEX(baseList: shapeList)
            case 6:
                sortedList = sortCON(baseList: shapeList)
            case 7:
                sortedList = sortSpeed(baseList: shapeList)
            case 8:
                sortedList = sortSspeed(baseList: shapeList)
            case 9:
                sortedList = sortFspeed(baseList: shapeList)
            case 10:
                sortedList = sortCspeed(baseList: shapeList)
            default:
                return
            }
        }
        else {
            switch optNum {
            case 0:
                sortedList = sortCRrev(baseList: shapeList)
            case 1:
                sortedList = sortNameRev(baseList: shapeList)
            case 2:
                sortedList = sortACrev(baseList: shapeList)
            case 3:
                sortedList = sortHPrev(baseList: shapeList)
            case 4:
                sortedList = sortSTRrev(baseList: shapeList)
            case 5:
                sortedList = sortDEXrev(baseList: shapeList)
            case 6:
                sortedList = sortCONrev(baseList: shapeList)
            case 7:
                sortedList = sortSpeedRev(baseList: shapeList)
            case 8:
                sortedList = sortSspeedRev(baseList: shapeList)
            case 9:
                sortedList = sortFspeedRev(baseList: shapeList)
            case 10:
                sortedList = sortCspeedRev(baseList: shapeList)
            default:
                return
            }
        }
        shapeList = sortedList
    }
    
    @IBAction func sortOpt1Wheel(_ sender: UIButton) {
        if(mainSort != numOptions - 1) {
            mainSort+=1
        }
        else {
            mainSort = 0
        }
        sender.setTitle(optDisplay[mainSort], for: .normal)
    }
    
    @IBAction func revOrder1(_ sender: UIButton) {
        if(!reverseSort1) {
            reverseSort1 = true
            sender.setImage(UIImage(systemName: "checkmark"), for: .normal)
            return
        }
        reverseSort1 = false
        sender.setImage(UIImage(systemName: "xmark"), for: .normal)
    }
    
    @IBAction func revOrder2(_ sender: UIButton) {
        if(!reverseSort2) {
            reverseSort2 = true
            sender.setImage(UIImage(systemName: "checkmark"), for: .normal)
            return
        }
        reverseSort2 = false
        sender.setImage(UIImage(systemName: "xmark"), for: .normal)
    }
    
    
    @IBAction func sortOpt2Wheel(_ sender: UIButton) {
        if(secondSort != numOptions - 1) {
            secondSort+=1
        }
        else {
            secondSort = 0
        }
        sender.setTitle(optDisplay[secondSort], for: .normal)
    }
    
    
    // Druid lv ticker (this affects what is in the list)
    @IBOutlet weak var lvIndicate: UILabel!
    var dLV: Int = 2
    
    @IBAction func lvTicker(_ sender: UIStepper) {
        dLV = Int(sender.value)
        lvIndicate.text = "\(dLV)"
    }
    
    func filterByDlv(baseList: [Shape])-> [Shape] {
    var newList: [Shape] = baseList
        if(moon) {
            if(dLV <= 5) {
                newList.removeAll {$0.beastCR > 1}
            }
            if(dLV >= 6) {
                let max = Int(dLV / 3)
                newList.removeAll {$0.beastCR > max}
            }
        }
        else if (!moon){
            if(dLV <= 4) {
                newList.removeAll {$0.beastCR > -2}
            }
            else if(dLV <= 7) {
                newList.removeAll {$0.beastCR > -1}
            }
        }
        if(dLV <= 3) {
            newList.removeAll {$0.swimSpeed > 0}
        }
        if(dLV <= 7) { // this CANNOT be an else if
            newList.removeAll {$0.flySpeed > 0}
        }
        return newList
    }
    
    
    func updateList() {
        makeList()
        filterList()
        doFullSort()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toList") {
            updateList()
            
        }
    }
}
