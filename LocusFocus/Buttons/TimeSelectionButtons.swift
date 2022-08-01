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
      .foregroundColor(.white)
      .background(Circle().fill(LinearGradient(colors: [Color("Blue1"), Color("Blue2")], startPoint: .bottom, endPoint: .top)))
  
  }
}
