//
//  TodoCell.swift
//  todo
//
//  Created by Vitalii Navrotskyi on 24.05.2022.
//

import UIKit

class TodoCell: UITableViewCell {

    @IBOutlet weak var itemLbl: UILabel!
    @IBOutlet weak var priorityView: UIView!
    
    
    func updateCell(todo: Todo) {
        itemLbl.text = todo.item
        
        switch todo.priority {
        case 0:
            priorityView.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
            break
        case 1:
            priorityView.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            break
        default:
            priorityView.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        }
    }

}
