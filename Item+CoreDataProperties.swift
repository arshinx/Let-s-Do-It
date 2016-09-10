//
//  Item+CoreDataProperties.swift
//  TodoList
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Item {

    @NSManaged var completed: Bool
    @NSManaged var text: String?

}

















