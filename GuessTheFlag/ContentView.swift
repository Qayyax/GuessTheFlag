//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Qayyax on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        // Vstack
        VStack(spacing: 0) {
          LinearGradient(stops: [
            Gradient.Stop(color: .green, location: 0.45),
            Gradient.Stop(color: .yellow, location: 0.55),
          ], startPoint: .top, endPoint: .bottom)
          Color.blue
        }
        // Text
        Text("I am happy")
          .foregroundStyle(.secondary)
          .padding(50)
          .background(.ultraThinMaterial)
      }
      .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
