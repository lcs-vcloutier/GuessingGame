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
    @State var alert: Bool = false

    var body: some View {
        VStack{
            Text("Guessing Game")
            Text("I'm thinking of a number between 1 and 100")
            TextField("Input guess here", text: $guess)
                .keyboardType(.decimalPad)

            Button(action: {checkGuess()}, label: {
                Text("Guess")
            })
            Text("You guessed \(guess)")
        }
        .alert(isPresented: $alert, content: {
            Alert(title: Text("Guessing Game"), message: Text("Error Reason"), dismissButton: .default(Text("OK")))
        })
    }
    func checkGuess() {
        let guess2 = Int(guess)!
        let 
        alert = true
        if guess2 == target {
            
        }
        else if guess2 > target {
            
        }
        else if guess2 < target {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

