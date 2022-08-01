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
      .frame(width: 45, height: 45)
      .padding()
      .foregroundColor(Color.white)
      .background(Color("StartButtonColor"))
      .clipShape(Circle())
  }
}

struct StopButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .frame(width: 30, height: 30)
      .padding()
      .foregroundColor(Color.white)
      .background(Color("StopButtonColor"))
      .clipShape(Circle())
  }
}

struct ResetButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .frame(width: 30, height: 30)
      .padding()
      .foregroundColor(Color.white)
      .background(Color("ResetButtonColor"))
      .clipShape(Circle())
  }
}


