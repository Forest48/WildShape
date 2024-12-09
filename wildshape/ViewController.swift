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
        // ovh hagec tem'okklen???
    }
    
    
    @IBAction func toSettings(_ sender: UIButton) {
        sender.setTitle("unfinished", for: .normal)
    }
    
}

