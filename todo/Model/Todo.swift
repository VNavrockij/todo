//
//  Todo.swift
//  todo
//
//  Created by Vitalii Navrotskyi on 24.05.2022.
//

import Foundation

struct Todos: Codable {
    let items: Array<Todo>
}

struct Todo: Codable {
    let item: String
    let priority: Int
}
