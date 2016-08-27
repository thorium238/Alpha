//
//  CompleteTaskViewController.swift
//  Alpha
//
//  Created by Thomas Piotrowski on 8/27/16.
//  Copyright © 2016 Thomas Piotrowski. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    
    @IBOutlet weak var taskLabel: UILabel!
    
    var task = Task()
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }

    }

    
    @IBAction func completeTapped(_ sender: AnyObject) {
        print("selectedIndex value is: \(previousVC.selectedIndex)")
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)

    }

}
