//
//  TimerView.swift
//  TimHortensApp
//
//  Created by matthew comer on 2026-05-21.
//

import SwiftUI
import Combine
struct TimerView: View {
    
    // Holds the number of seconds for the coffee run timer
    @State private var seconds = 0
    
    // Tracks if the timer is running or stopped
    @State private var running = false
    
    // Creates a timer that updates every 1 second
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            
            // Title for the timer screen
            Text("Coffee Run Timer")
                .font(.title)
            
            // Displays the current timer seconds
            Text("\(seconds) seconds")
                .font(.largeTitle)
            
            // Button switches between starting and stopping the timer
            Button(running ? "Stop" : "Start") {
                running.toggle()
            }
        }
        
        // Runs every second and adds time only when running is true
        .onReceive(timer) { _ in
            if running {
                seconds += 1
            }
        }
    }
}

#Preview {
    TimerView()
}
