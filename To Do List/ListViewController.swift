//
//  FirstViewController.swift
//  To Do List
//
//  Created by Aseel Alshohatee on 2/25/19.
//  Copyright © 2019 Aseel Alshohatee. All rights reserved.
//

import UIKit
var list :[String] = [String] ();
var count: Int = 0;
class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var addButton: UIBarButtonItem!
    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return list.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return  cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            list.remove(at: indexPath.row)
        
            if count > 0{
                count -= 1;
            }
            myTableView.reloadData()
        }
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
        
    }
    
    
    
}

