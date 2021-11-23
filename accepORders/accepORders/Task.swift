//
//  Task.swift
//  accepORders
//
//  Created by Ruslan Dalgatov on 23.11.2021.
//

import Foundation

class Task {
    let name: String
    let time: String
    let creationDate = Date()
    var completed = false
  
    init(name: String, time: String) {
    self.name = name
    self.time = time
  }
}
