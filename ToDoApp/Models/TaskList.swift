//
//  TaskList.swift
//  ToDoApp
//
//  Created by Hemanth Kumar on 18/02/25.
//

import Foundation

struct TaskList: Codable {
    
    var tasks: [TaskModel] = []
    
    init(tasks: [TaskModel]) {
        self.tasks = tasks
    }
    
}
