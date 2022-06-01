//
//  TimerView.swift
//  LocusFocus
//
//  Created by Jacob Tamayo on 6/1/22.
//

import SwiftUI

struct TimerView: View {
  
  @State private var timeRemaining = 0
  @State private var timerRunning: Bool = false
  var timeConverter = TimerConverter()
  let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  
  //Time in seconds
  @State private var tenMinutes = 600
  @State private var twentyMinutes = 1200
  @State private var thirtyMinutes = 1800
  
  
    var body: some View {
      VStack {
        HStack(spacing: 30) {
          Button("10") {
            timeRemaining = tenMinutes
          }
          Button("20") {
          timeRemaining = twentyMinutes
          }
          Button("30") {
            timeRemaining = thirtyMinutes
          }
        }
        Text(timeConverter.convertSecondsToTime(from: timeRemaining))
          .padding()
          .font(.system(size: 100))
          .onReceive(timer) { _ in
            if timeRemaining > 0 && timerRunning {
              timeRemaining -= 1
            }else {
              timerRunning = false
            }
          }
        HStack(spacing: 30) {
          Button("Start") {
            timerRunning = true
          }
          Button("Stop") {
            timerRunning = false
          }
        }
        
      }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
