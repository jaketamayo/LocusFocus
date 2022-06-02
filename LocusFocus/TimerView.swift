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

        .font(.system(size: 30))
        Text(timeConverter.convertSecondsToTime(from: timeRemaining))
          .padding()
          .font(.system(size: 100))
          .onReceive(timer) { _ in
            if timeRemaining > 0 && timerRunning {
              timeRemaining -= 1
            } else {
              timerRunning = false
            }
          }
          .padding(EdgeInsets(top: 60, leading: 0, bottom: 50, trailing: 0))

        

        HStack(spacing: 30) {
          Button("Start") {
            timerRunning = true
          }.buttonStyle(StartButton())
          Button("Stop") {
            timerRunning = false
          }.buttonStyle(StopButton())
          }
        .font(.system(size: 25, weight: .semibold))
        Button("Reset") {
          timeRemaining = 0
          timerRunning = false
        }
        .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
      }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
