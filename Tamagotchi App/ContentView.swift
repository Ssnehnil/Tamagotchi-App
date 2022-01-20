//
//  ContentView.swift
//  Tamagotchi App
//
//  Created by Ghosh, Ssnehnil (BJH) on 20/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let tamagotchi = Tamagotchi(hunger: 5, dead: false, health: 75, weight: 7, happiness: 1)
        Text("""
                Hunger: \(tamagotchi.hunger)
                Happiness: \(tamagotchi.happiness)
                Health: \(tamagotchi.health)/100
                Weight: \(tamagotchi.weight)kg
                """)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
