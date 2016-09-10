//
//  TodoListController.swift
//  TodoList
//
//

import UIKit
import CoreData

class TodoListController: UIViewController, NSFetchedResultsControllerDelegate {
    
    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var generalButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var listButton: UIButton!
    
    @IBOutlet weak var addItemButton: UIButton!
    @IBOutlet weak var editButton: UIButton!
    
    // Actions
    @IBAction func generalButtonPressed(_ sender: AnyObject) {
        
        // Change States
        homeButton.setImage(UIImage(named: "Home Button Deselected"), for: UIControlState.normal)
        listButton.setImage(UIImage(named: "List Button Deselected"), for: UIControlState.normal)
        generalButton.setImage(UIImage(named: "General Button"), for: UIControlState.normal)
    }
    
    @IBAction func homebuttonPressed(_ sender: AnyObject) {
        
        // Change States
        listButton.setImage(UIImage(named: "List Button Deselected"), for: UIControlState.normal)
        generalButton.setImage(UIImage(named: "General Button Deselected"), for: UIControlState.normal)
        homeButton.setImage(UIImage(named: "Home Button"), for: UIControlState.normal)
    }
    
    @IBAction func listButtonPressed(_ sender: AnyObject) {
        
        // Change States
        homeButton.setImage(UIImage(named: "Home Button Deselected"), for: UIControlState.normal)
        generalButton.setImage(UIImage(named: "General Button Deselected"), for: UIControlState.normal)
        listButton.setImage(UIImage(named: "List Button"), for: UIControlState.normal)
    }
    
    lazy var dataSource: DataSource = {
        return DataSource(tableView: self.tableView)
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataSource
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showItem" {
            guard let destinationController = segue.destination as? UpdateItemViewController, let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let item = dataSource.objectAtIndexPath(indexPath) as! Item
            destinationController.item = item
        }
    }
    
    // MARK: - UITableViewDelegate

    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return .delete
    }
}


























