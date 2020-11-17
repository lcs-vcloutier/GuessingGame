//
//  ContentView.swift
//  GuessingGame
//
//  Created by Cloutier, Vincent on 2020-11-17.
//

import SwiftUI

struct ContentView: View {
    let target = Int.random(in: 1..<100)
    @State private var guess = ""
    @State private var msg = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("Guess a number between 1 and 100")
                    .font(.title2)
                    .fontWeight(.bold)
                
                TextField("Input number here", text: $guess)
                    .frame(width: 150, height: 50)
                    .padding(5)
                    .keyboardType(.decimalPad)
                    .foregroundColor(Color.white)
                    .background(Color.gray)
                    .cornerRadius(15)
                
                
                Button(action: {checkGuess()}, label: {
                    Text("Guess")
                        .font(.title2)
                        .fontWeight(.bold)
                })
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(15)
                
                Text(msg)
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
            }
            .navigationTitle("Guessing Game")
        }
    }
    //check what user guessed against comp
    func checkGuess() {
        // is the guess and INT in expected range
        guard let givenInt = Int(guess) else {
            msg = "Please enter an integer"
            return
        }
        guard givenInt > 0, givenInt < 100 else {
            msg = "Please enter an Integer in the range of 1 to 100"
            return
        }
        if target == givenInt {
            msg = "You guessed correctly!"
        }
        else if target > givenInt {
            msg = "Guess lower!"
        }
        else if target > givenInt {
            msg = "Guess higher!"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

