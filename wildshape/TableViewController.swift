//
//  TableViewController.swift
//  wildshape
//
//  Created by Forest.
//

import UIKit

let shapeList:[Shape] = []

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @ IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
  //      return shapeList.count
    //}
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shapeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteListView", for: indexPath)
        return cell
    }
    
    
}
