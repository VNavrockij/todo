//
//  TodoVC.swift
//  todo
//
//  Created by Vitalii Navrotskyi on 24.05.2022.
//

import UIKit

class TodoVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var todoItemTxt: UITextField!
    @IBOutlet weak var prioritySegment: UISegmentedControl!
    @IBOutlet weak var todoTable: UITableView!
    
    var todos = Array<Todo>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todoTable.delegate = self
        todoTable.dataSource = self
        
        getTodos()

    }
    
    func getTodos() {
        NetworkService.shared.getTodos { (todos) in
            self.todos = todos.items
            self.todoTable.reloadData()
            debugPrint(todos)
        }
    }

    @IBAction func addTodo(_ sender: Any) {
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell") as? TodoCell {
            cell.updateCell(todo: todos[indexPath.row])
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
}

