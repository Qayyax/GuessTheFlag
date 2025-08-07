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
            .init(color: .green, location: 0.45),
            .init(color: .yellow, location: 0.55),
          ], startPoint: .top, endPoint: .bottom)
          AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
        }
        // Text
        Text("I am happy")
          .foregroundStyle(.secondary)
          .padding(50)
          .background(.ultraThinMaterial)
        
        // Another text
        Text("I am looking forward to the picnic")
          .frame(maxWidth: .infinity, maxHeight: .infinity)
          .foregroundStyle(.white)
          .background(.red.gradient)
        
      }
      .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
