//
//  ViewController.swift
//  wildshape
//
//  Created by Forest
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var shapeList: [Shape] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        shapeList = makeDefaultList()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shapeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shapeCell", for: indexPath)
        cell.textLabel?.text = shapeList[indexPath.row].beastName
        return cell
    }
    
}


class ViewDetails: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

