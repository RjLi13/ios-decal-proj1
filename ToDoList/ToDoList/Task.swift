//
//  Task.swift
//  ToDoList
//
//  Created by Ruijing Li on 3/1/16.
//
//

import Foundation

class Task {
    var taskName: String
    var completed: Bool
    var completionTime: NSDate
    
    init() {
        taskName = ""
        completed = false
        completionTime = NSDate()
    }
    
    init(name: String) {
        taskName = name
        completed = false
        completionTime = NSDate()
    }
    
    func complete(time: NSDate) {
        if completed {
            completed = false
        } else {
            completed = true
            completionTime = time
        }
    }
    
    func has24hrsPassed() -> Bool {
        if completed {
            if completionTime.timeIntervalSinceNow <= -24*60*60 {
                return true
            }
        }
        return false
    }
    
    
    
}
