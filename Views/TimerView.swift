//
//  TimerView.swift
//  TimHortensApp
//
//  Created by matthew comer on 2026-05-21.
//
import SwiftUI
import Combine

struct TimerView: View {
    
    @State private var time = 0
    @State private var running = false
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("Time: \(time)s")
                .font(.largeTitle)
            
            Button(running ? "Stop" : "Start") {
                running.toggle()
            }
        }
        .onReceive(timer) { _ in
            if running {
                time += 1
            }
        }
    }
}

#Preview {
    TimerView()
}
