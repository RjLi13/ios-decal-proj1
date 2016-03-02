//
//  AddToDoItemViewController.swift
//  ToDoList
//
//  Created by Ruijing Li on 2/28/16.
//
//

import UIKit

class AddToDoItemViewController: UIViewController {
    
    @IBOutlet weak var addToDoItemTextField: UITextField!
    var model = TaskContainerArray()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
   
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "saveTaskSegue"){
            let targetVC = segue.destinationViewController as! ToDoListTableViewController
            if let task = addToDoItemTextField.text where !task.isEmpty{
                model.addTask(task)
            }
            targetVC.model = self.model
            
        }
        
    }
    


    
}
