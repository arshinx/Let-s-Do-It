//
//  DetailViewController.swift
//  TodoList
//
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var item: Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        guard let item = item else { fatalError("Cannot show detail without an item") }
        textField.text = item.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(_ sender: AnyObject) {
        if let item = item {
            item.text = textField.text
            DataController.sharedInstance.saveContext()
            
            self.navigationController?.popViewController(animated: true)
        }
    }

    

}



















