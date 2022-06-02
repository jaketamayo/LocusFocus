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
      .frame(width: 60, height: 20)
      .padding()
      .foregroundColor(Color.white)
      .background(Color.green)
      .clipShape(Capsule())
  }
}

struct StopButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .frame(width: 60, height: 20)
      .padding()
      .foregroundColor(Color.white)
      .background(Color.red)
      .clipShape(Capsule())
  }
}


