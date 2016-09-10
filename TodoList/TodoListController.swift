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
    
    // 
    
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
            guard let destinationController = segue.destination as? DetailViewController, let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let item = dataSource.objectAtIndexPath(indexPath) as! Item
            destinationController.item = item
        }
    }
    
    // MARK: - UITableViewDelegate

    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return .delete
    }
}


























