//
//  StartStopCustomButtons.swift
//  LocusFocus
//
//  Created by Jacob Tamayo on 6/1/22.
//

import SwiftUI

struct StartButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .frame(width: 40, height: 40)
      .padding()
      .foregroundColor(Color.white)
      .background(Color.green)
      .clipShape(Circle())
  }
}

struct StopButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .frame(width: 40, height: 40)
      .padding()
      .foregroundColor(Color.white)
      .background(Color.red)
      .clipShape(Circle())
  }
}


