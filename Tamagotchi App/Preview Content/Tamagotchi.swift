//
//  Tamagotchi.swift
//  Tamagotchi App
//
//  Created by Ghosh, Ssnehnil (BJH) on 20/01/2022.
//

import Foundation

class Tamagotchi: ObservableObject {
    @Published var hunger: Int
    @Published var dead: Bool
    @Published var health: Int
    @Published var weight: Int
    @Published var happiness: Int
    
    init() {
        self.hunger = 20
        self.dead = false
        self.health = 75
        self.weight = 7
        self.happiness = 1
    }
    
    func feedTamagotchiMeal() {
        hunger -= 5
        weight += 5
        happiness += 5
    }
    
    func feedTamagotchiSnack() {
        hunger -= 1
        weight += 2
        happiness += 3
    }
    
    func playGame() {
        happiness += 5
    }
}
