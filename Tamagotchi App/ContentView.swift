//
//  ContentView.swift
//  Tamagotchi App
//
//  Created by Ghosh, Ssnehnil (BJH) on 20/01/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var tamagotchi = Tamagotchi()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var timePassing = 0
    var body: some View {
        VStack {
            Text("\(timePassing)")
                .onReceive(timer) { _ in
                    if !tamagotchi.dead {
                        self.timePassing += 1
                        if self.timePassing % 10 == 0 {
                            tamagotchi.decreaseHealthAndHappiness()
                            tamagotchi.increaseHunger()
                            tamagotchi.decreaseWeight()
                        }
                        if self.timePassing % 30 == 0 {
                            tamagotchi.increaseAge()
                        }
                        if tamagotchi.health <= 0 || tamagotchi.hunger > 10 || tamagotchi.happiness < 3 || tamagotchi.weight < 4 || tamagotchi.weight > 16 || tamagotchi.age > 24 {
                            tamagotchi.dead = true
                        }
                    }
                }
            Form {
                Text("I am \(tamagotchi.dead ? "dead" : "alive")")
                Section {
                    Text("""
                            Hunger: \(tamagotchi.hunger)
                            Happiness: \(tamagotchi.happiness)
                            Health: \(tamagotchi.health)/100
                            Weight: \(tamagotchi.weight)kg
                            Age: \(tamagotchi.age) years old
                            """)
                }
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
                .disabled(tamagotchi.dead)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
