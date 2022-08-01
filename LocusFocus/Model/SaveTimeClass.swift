//
//  SaveTimeClass.swift
//  LocusFocus
//
//  Created by Jacob Tamayo on 8/1/22.
//

import SwiftUI

class SavedTime: ObservableObject {
  @Published private var addingTask = [AddTask]()
  
  func saveTime(time: AddTask) {
    self.addingTask.append(time)
  }
}
