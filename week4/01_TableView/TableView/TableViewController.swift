//
//  ViewController.swift
//  TableView
//
//  Created by 蔡佳峪 on 2023/7/19.
//

import UIKit

class TableViewController:UITableViewController {
    override func viewDidLoad() {
    }
    //設置行數 numberOfRowsInSection
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        15
    }
    //設置Cell重用 cellForRowAt與dequeueReusableCell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "This is section \(indexPath.section), row \(indexPath.row)"
        return cell
    }
    //設置行高 heightForRowAt
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let pixel: CGFloat = 100
        return pixel
    }
}

