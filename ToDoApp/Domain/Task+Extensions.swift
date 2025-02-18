//
//  Task+Extensions.swift
//  ToDoApp
//
//  Created by Hemanth Kumar on 18/02/25.
//

import Foundation
import CoreData

extension Task {
    
    ///Function to fetch all tasks in the database
    
    static func allTasksFetchRequest() -> NSFetchRequest<Task> {
        let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "id", ascending: false)]
        return fetchRequest
    }
    
    ///Function to fetch task by ID in the database
    static func by(id: Int) -> Task? {
        let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "id == %d", id)
        do {
            let tasks = try CoreDataManager.shared.context.fetch(fetchRequest)
            return tasks.first
        } catch {
            print("Error fetching tasks: \(error)")
            return nil
        }
    }
    
    
}
