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
        NavigationView {
            VStack {
                Text("Guess a number between 1 and 100")
                    .font(.title2)
                    .fontWeight(.bold)
                TextField("Input guess here", text: $guess)
                    .keyboardType(.decimalPad)
                
                Button(action: {}, label: {
                    Text("Guess")
                        .font(.title2)
                        .fontWeight(.bold)
                })
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(5)
Spacer()
                   
            }
            .padding()
            .navigationTitle("Guessing Game")
        }

//    .alert(isPresented: $alert, content: {
//            Alert(title: Text("Guessing Game"), message: Text("\(msg)"), dismissButton: .default(Text("OK")))
//        })
    }
//    func checkGuess() {
//        let guess2 = Int(guess)!
//        var msg = ""
//        alert = true
//        if guess2 == target {
//            msg = "You Got It!!!!"
//        }
//        else if guess2 > target {
//            msg = "Guess lower"
//        }
//        else if guess2 < target {
//            msg = "Guess lower"
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

