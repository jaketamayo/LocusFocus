//
//  TimerView.swift
//  LocusFocus
//
//  Created by Jacob Tamayo on 6/1/22.
//

import SwiftUI
import UserNotifications

struct TimerView: View {
  var notification = NotificationHandler()
  @State private var timeRemaining: Int = 0
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
        .buttonStyle(TimeSelectionButtons())
        Button("20") {
          timeRemaining = twentyMinutes
        }
        .buttonStyle(TimeSelectionButtons())
        Button("30") {
          timeRemaining = thirtyMinutes
        }
        .buttonStyle(TimeSelectionButtons())
      }
      .font(.system(size: 30, weight: .medium))
      .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))

      ///Timer display
      Text(timeConverter.convertSecondsToTime(from: timeRemaining))
        .padding()
        .font(.system(size: 100, weight: .semibold))
        .onReceive(timer) { _ in
          if timeRemaining > 0 && timerRunning {
            timeRemaining -= 1
          } else {
            timerRunning = false
          }
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
       
      ///

      HStack(spacing: 30) {
        Button {
          timeRemaining = 0
          timerRunning = false
        } label: {
          Image(systemName: "gobackward")
        }
        .buttonStyle(ResetButton())
       
        //Start Button
        Button {
          timerRunning = true
          notification.scheduleNotification(time: timeRemaining)
          notification.requestAuthorization()
        } label: {
          Image(systemName: "play.fill")
        }
        .buttonStyle(StartButton())
        .font(.system(size: 33, weight: .semibold))

       
        //Stop Button
        Button {
          timerRunning = false
        } label: {
          Image(systemName: "stop.fill")
        }
        .buttonStyle(StopButton())
       
      }
      .font(.system(size: 25, weight: .semibold))
      
      
  
      .onAppear {
        UIApplication.shared.applicationIconBadgeNumber = 0
      }
      
      
    }
  }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
