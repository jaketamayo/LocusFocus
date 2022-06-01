//
//  TimerView.swift
//  LocusFocus
//
//  Created by Jacob Tamayo on 6/1/22.
//

import SwiftUI

struct TimerView: View {
  
  //Time in seconds
  @State private var tenMinutes = 600
  @State private var twentyMinutes = 1200
  @State private var thirtyMinutes = 1800
  
  
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
