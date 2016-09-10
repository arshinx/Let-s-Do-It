//
//  Item.swift
//  TodoList
//
//  Created by Arshin Jain
//

import Foundation
import CoreData


class Item: NSManagedObject {
    
    static let identifier = "Item"
    
    static let fetchRequestx: NSFetchRequest<Item> = {
        let request = NSFetchRequest<Item>(entityName: Item.identifier)
        let sortDescriptor = NSSortDescriptor(key: "text", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }()

}
