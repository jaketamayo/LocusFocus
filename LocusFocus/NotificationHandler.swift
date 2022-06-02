//
//  NotificationHandler.swift
//  LocusFocus
//
//  Created by Jacob Tamayo on 6/2/22.
//

import Foundation
import UserNotifications

struct NotificationHandler {
  
  func requestAuthorization() {
    let options: UNAuthorizationOptions = [.alert, .sound, .badge]
    UNUserNotificationCenter.current().requestAuthorization(options: options) { success, error in
      if let error = error {
        print("Error\(error)")
      } else {
        print("Success")
      }
    }
    
  }
  
  func scheduleNotification(time: Int) {
    let content = UNMutableNotificationContent()
    content.title = "Your timer has ended"
    content.sound = .default
    content.badge = 1
    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(time), repeats: false)
    let request = UNNotificationRequest(identifier: "none", content: content, trigger: trigger)
    let center = UNUserNotificationCenter.current()
    center.add(request) { error in
      if let error = error {
        print("Error \(error)")
      }
    }
  }
  
 
}
