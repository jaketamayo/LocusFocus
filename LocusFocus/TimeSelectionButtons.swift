//
//  TimeSelectionButtons.swift
//  LocusFocus
//
//  Created by Jacob Tamayo on 6/2/22.
//

import SwiftUI

struct TimeSelectionButtons: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .frame(width: 60, height: 60) 
      .foregroundColor(.black)
      
  }
}
