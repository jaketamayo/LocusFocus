//
//  ContentView.swift
//  LocusFocus
//
//  Created by Jacob Tamayo on 6/1/22.
//

import SwiftUI

/*
TODO:
   1. Make time buttons dissapear after clicking on one, then show after timer is finished
   2. Make start and stop look more like buttons
   3. Make times look like buttons
   4. Show progress of total time focused that day
   5. Add button to add task to focus on for current session
 
 */

struct ContentView: View {
    var body: some View {
        TimerView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
