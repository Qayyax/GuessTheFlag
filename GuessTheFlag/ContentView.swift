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
          Color.red
          Color.blue
        }
        // Text
        Text("I am happy")
          .foregroundStyle(.secondary)
          .padding(50)
          .background(.ultraThinMaterial)
      }
    }
}

#Preview {
    ContentView()
}
