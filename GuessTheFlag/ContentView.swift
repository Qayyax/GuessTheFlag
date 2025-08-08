//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Qayyax on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack{
        Button("Button 1") { }
          .buttonStyle(.bordered)
        Button("Button 2", role: .destructive) { }
          .buttonStyle(.bordered)
        Button("Button 3") { }
          .buttonStyle(.borderedProminent)
          .tint(.mint)
        Button("Button 1", role: .destructive) { }
          .buttonStyle(.borderedProminent)
        Button {
          print("Button was tapped")
        } label: {
          Text("Tap me")
            .padding()
            .foregroundStyle(.white)
            .background(.red)
        }
      }
    }
  func executeDelete() {
    print("Now deleting")
  }
}

#Preview {
    ContentView()
}
