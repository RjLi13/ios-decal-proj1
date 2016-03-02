//
//  ToDoListTableViewCell.swift
//  ToDoList
//
//  Created by Ruijing Li on 2/29/16.
//
//

import UIKit

class ToDoListTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var toDoItemTextLabel: UILabel!
    
}
