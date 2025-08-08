//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Qayyax on 8/6/25.
//

import SwiftUI

struct ContentView: View {
  @State private var showingScore = false
  @State private var scoreTitle = ""
  @State private var score = 0
  @State private var questionCount = 0
  @State private var showingFinalAlert = false
  let maxQuestionCount = 8
  
  @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
  @State private var correctAnswer  = Int.random(in: 0...2)
  
  var body: some View {
    ZStack {
      LinearGradient(colors: [.purple, .black], startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea()
      VStack(spacing: 20){
        Spacer()
        Text("Guess the Flag")
          .font(.largeTitle.bold())
          .foregroundStyle(.white)
          .shadow(color: .black, radius: 2)
        VStack(spacing: 15) {
          VStack (spacing: 5){
            Text("Tap the flag of")
              .foregroundStyle(.white)
              .font(.subheadline.weight(.heavy))
            
            Text(countries[correctAnswer])
              .foregroundStyle(.white)
              .font(.largeTitle.weight(.semibold))
          }
          
          ForEach(0..<3) { number in
            Button {
              flagTapped(number)
            } label: {
              Image(countries[number])
                .clipShape(.capsule)
                .shadow(color: .red, radius: 5)
            }}
          .frame(maxWidth: .infinity)
          .padding(.vertical, 20)
          .background(.regularMaterial)
          .clipShape(.rect(cornerRadius: 20))
        }
        
        Spacer()
        Spacer()
        
        Text("Score: \(score)")
          .foregroundStyle(.white)
          .font(.title.bold())
          .frame(maxWidth: .infinity)
          .background(.ultraThinMaterial)
          .clipShape(.rect(cornerRadius: 20))
          .padding(.horizontal, 90)
        
        Spacer()
      }
      .padding()
    }
    .alert(scoreTitle, isPresented: $showingScore) {
      Button("Continue", action:askQuestion)
    } message: {
      if scoreTitle == "Wrong" {
        Text("That's the flag of \(countries[correctAnswer])")
        Text("Your score is \(score)")
      } else {
        Text("Your score is \(score)")
      }
    }
    
    .alert("Game ended", isPresented: $showingFinalAlert) {
      Button("Restart", action:askQuestion)
    }message: {
      Text("You have answered \(score) questions out of \(maxQuestionCount) correctly.")
    }
  }
  // after the body
  func flagTapped(_ number: Int) {
    questionCount += 1
    if number == correctAnswer {
      scoreTitle = "Correct"
      score += 1
    } else {
      scoreTitle = "Wrong"
    }
    if questionCount == maxQuestionCount {
      showingScore = false
      showingFinalAlert = true
    } else {
      showingScore = true
    }
  }
  
  func askQuestion() {
    countries.shuffle()
    correctAnswer = Int.random(in: 0...2)
    if questionCount == maxQuestionCount {
      score = 0
    }
  }
}

#Preview {
    ContentView()
}
