//
//  DetailsViewController.swift
//  wildshape
//
//  Created by Forest.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBAction func editButton(_ sender: UIButton) {
        sender.setTitle("WIP", for: .normal)
    }
    
    @IBOutlet weak var showName: UILabel!
    @IBOutlet weak var showSizeType: UILabel!
    @IBOutlet weak var showCRHPAC: UILabel!
    @IBOutlet weak var showSTR: UILabel!
    @IBOutlet weak var showDEX: UILabel!
    @IBOutlet weak var showCON: UILabel!
    @IBOutlet weak var showINT: UILabel!
    @IBOutlet weak var showWIS: UILabel!
    @IBOutlet weak var showCHA: UILabel!
    @IBOutlet weak var showOther: UILabel!
    
    var displayShape = Shape()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.displayShape = shapeList[selectedBeast]
        upDateText()
    }
    
    func upDateText() {
        showName.text = "\(displayShape.beastName)"
        showSizeType.text = "\(displayShape.readSize()) \(displayShape.beastType)"
        showCRHPAC.text = "CR:\(displayShape.readCR()) \tHP:\(displayShape.beastHP) \tAC:\(displayShape.beastAC)"
        showSTR.text = "STR\n\(displayShape.beastSTR)\n\(displayShape.readModifier(abil:"STR"))"
        showDEX.text = "DEX\n\(displayShape.beastDEX)\n\(displayShape.readModifier(abil:"DEX"))"
        showCON.text = "CON\n\(displayShape.beastCON)\n\(displayShape.readModifier(abil:"CON"))"
        showINT.text = "INT\n\(displayShape.beastINT)\n\(displayShape.readModifier(abil:"INT"))"
        showWIS.text = "WIS\n\(displayShape.beastWIS)\n\(displayShape.readModifier(abil:"WIS"))"
        showCHA.text = "CHA\n\(displayShape.beastCHA)\n\(displayShape.readModifier(abil:"CHA"))"
        showOther.text = "\(displayShape.readVision()) \(displayShape.readMovement()) \(displayShape.readAbilities()) \(displayShape.readActions())"
        showOther.frame.size.width = 360
        showOther.sizeToFit()
        
    }
    
    // swipe is going to the right
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        if(selectedBeast > 0) {
            selectedBeast-=1
            self.displayShape = shapeList[selectedBeast]
        }
        else {
            selectedBeast = shapeList.count
        }
        upDateText()
    }
    
    // swipe is comoing from the left
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        if(selectedBeast < shapeList.count - 1) {
            selectedBeast+=1
            self.displayShape = shapeList[selectedBeast]
        }
        else {
            selectedBeast = -1
        }
        upDateText()
    }
    
    
}

