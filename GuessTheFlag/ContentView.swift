//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Qayyax on 8/6/25.
//

import SwiftUI

struct ContentView: View {
  @State private var showingAlert = false
  
    var body: some View {
      VStack{
        Button("Show Alert") {
          showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
          Button("OK") {}
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
