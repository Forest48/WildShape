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
        
    }
    
}

