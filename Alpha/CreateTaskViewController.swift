//
//  CreateTaskViewController.swift
//  Alpha
//
//  Created by Thomas Piotrowski on 8/26/16.
//  Copyright © 2016 Thomas Piotrowski. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    /** var previousVC = TasksViewController() **/
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
       
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: AnyObject) {
        // Create a Task from the outlets info.
       /**  let task = Task() **/
        // new ****
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        // new ***
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        // Add new task to array in previous viewcontroller
        // Now is "Pop back..
        /** previousVC.tasks.append(task) 
            previousVC.tableView.reloadData()
         **/
        navigationController!.popViewController(animated: true)
    }

}
