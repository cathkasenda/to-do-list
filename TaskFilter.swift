//
//  TaskFilter.swift
//  BoboboxToDoList
//
//  Created by Cath Kasenda on 12/09/23.
//

import SwiftUI

enum TaskFilter: String {
    static var allFilters: [TaskFilter] {
        return [.NonCompleted, .Completed, .OverDue, .All]
    }
    
    case All = "All"
    case NonCompleted = "To Do"
    case Completed = "Completed"
    case OverDue = "Overdue"
}
