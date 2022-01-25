//
//  ContentView.swift
//  Tamagotchi App
//
//  Created by Ghosh, Ssnehnil (BJH) on 20/01/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var tamagotchi = Tamagotchi()
    var body: some View {
        VStack {
            Text("""
                    Hunger: \(tamagotchi.hunger)
                    Happiness: \(tamagotchi.happiness)
                    Health: \(tamagotchi.health)/100
                    Weight: \(tamagotchi.weight)kg
                    """)
            Form {
                Section {
                    Button("Eat Meal", action: {
                        tamagotchi.feedTamagotchiMeal()
                    })
                    Button("Eat Snack", action: {
                        tamagotchi.feedTamagotchiSnack()
                    })
                    Button("Play Game", action: {
                        tamagotchi.playGame()
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
