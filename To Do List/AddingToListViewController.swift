//
//  SecondViewController.swift
//  To Do List
//
//  Created by Aseel Alshohatee on 2/25/19.
//  Copyright © 2019 Aseel Alshohatee. All rights reserved.
// was made from swift 3 to swift 4

import UIKit

class AddingViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a  .
    }
    
    
    @IBAction func addItem(_ sender: UIButton)
    {
        count += 1;
        if (textField.text != "")
        {
            list.append("\(count). \(textField.text!)")
            textField.text = ""
        }
        
    } 
    /*  override func didReceiveMemoryWarning() {
     super.didReceiveMemoryWarning()        // Dispose of any resources that can be recreated.
     }
     */
    @IBAction func primaryActionTrigger(_ sender: UITextField) {
        sender.resignFirstResponder();
        
    }
    
    
}

