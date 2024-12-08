//
//  ViewController.swift
//  wildshape
//
//  Created by Forest
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toList(_ sender: UIButton) {
        sender.setTitle("[sceneChange]", for: .normal)
        wildshape.toList()
    }
    
    
    @IBAction func toSettings(_ sender: UIButton) {
        sender.setTitle("unfinished", for: .normal)
    }
    
}

func toList(){}
