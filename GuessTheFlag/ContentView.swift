//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Qayyax on 8/6/25.
//

import SwiftUI

struct ContentView: View {
  @State private var showingAlert = false
  var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
  var correctAnswer  = Int.random(in: 0...2)
  var body: some View {
    ZStack {
      Color.blue.ignoresSafeArea(edges: .all)
      VStack(spacing: 30) {
        VStack {
          Text("Tap the flag of")
          Text(countries[correctAnswer])
        }
        
        ForEach(0..<3) { number in
          Button {
            // flag was tapped
          } label: {
            Image(countries[number])
          }}
      }
    }
  }
}

#Preview {
    ContentView()
}
