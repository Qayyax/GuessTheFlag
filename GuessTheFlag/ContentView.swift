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
        Button {
          print("Edit button was tapped")
        } label: {
          Image(systemName: "pencil")
            .border(.blue)
        }
        Button ("Edit", systemImage: "pencil") {
          print("Edit button was tapped")
        }
        Button {
          print("I have a date")
        } label: {
          Label("Edit", systemImage: "fish")
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
