//
//  TodoVC.swift
//  todo
//
//  Created by Vitalii Navrotskyi on 24.05.2022.
//

import UIKit

class TodoVC: UIViewController {
    
    @IBOutlet weak var todoItemTxt: UITextField!
    @IBOutlet weak var prioritySegment: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkService.shared.getTodos { (todos) in
            debugPrint(todos)
        }
    }

    @IBAction func addTodo(_ sender: Any) {
    }
    
}

