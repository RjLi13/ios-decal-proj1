//
//  TaskContainerArray.swift
//  ToDoList
//
//  Created by Ruijing Li on 3/1/16.
//
//

import Foundation

class TaskContainerArray {
    var taskList: [Task]
    
    init(){
        taskList = [Task]()
    }
    
    func addTask(s: String) {
        let task = Task(name: s)
        taskList.append(task)
    }
    
    func countTasks() -> Int{
        return taskList.count
    }
    
    func completeTask(i: Int){
        let timeMarkCompleted = NSDate()
        taskList[i].complete(timeMarkCompleted)
    }
    
    func deleteTask(removeIndex: Int){
        taskList.removeAtIndex(removeIndex)
    }
   
    
    func getTask(i: Int) -> String{
        return taskList[i].taskName
    }
    
    func getIsTaskComplete(i: Int) -> Bool {
        return taskList[i].completed
    }

    
    func numCompletedTasks() -> Int{
        var counter = 0
        for task in taskList{
            if task.completed {
                counter += 1
            }
        }
        return counter
    }
    
    func checkWhichTasksDisapper() {
        var indexLst = [Int]()
        for var i = 0; i < taskList.count; i++ {
            if taskList[i].has24hrsPassed() {
                indexLst.append(i)
            }
        }
        
        for i in indexLst {
            taskList.removeAtIndex(i)
        }
    }
    
}
