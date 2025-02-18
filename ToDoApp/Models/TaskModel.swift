//
//  TaskModel.swift
//  ToDoApp
//
//  Created by Hemanth Kumar on 18/02/25.
//


import Foundation

struct TaskModel: Codable {
    var id: Int
    var title: String
    var description: String
    var favourite: Bool
    var priority: String
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.title = try container.decode(String.self, forKey: .title)
        self.description = try container.decode(String.self, forKey: .description)
        self.favourite = (try? container.decode(Bool.self, forKey: .favourite)) ?? false
        self.priority = try container.decode(String.self, forKey: .priority)
    }
    
}
