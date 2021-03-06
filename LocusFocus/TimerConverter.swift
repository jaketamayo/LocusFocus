//
//  TimerConverter.swift
//  LocusFocus
//
//  Created by Jacob Tamayo on 6/1/22.
//

import Foundation

struct TimerConverter {
 
  func convertSecondsToTime(from: Int) -> String {
    let minutes = from / 60
    let seconds = from % 60
    return String(format: "%02i:%02i", minutes, seconds)
  }
}
