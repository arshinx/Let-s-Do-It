//
//  AddItemViewController.swift
//  LetsDoIt
//
//  Created by Arshin Jain on 9/9/16.
//  Copyright © 2016 Arshin Jain. All rights reserved.
//

import UIKit
import CoreData

class AddItemViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    let dataController = DataController.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancel(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: AnyObject) {
        
        guard let text = textField.text else { return }
        
        let item = NSEntityDescription.insertNewObject(forEntityName: Item.identifier, into: dataController.managedObjectContext) as! Item
        
        item.text = text
        
        dataController.saveContext()
        
        dismiss(animated: true, completion: nil)
    }
    
}



