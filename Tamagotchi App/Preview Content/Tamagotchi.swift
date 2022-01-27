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
    @Published var age: Int
    
    init() {
        self.hunger = 10
        self.dead = false
        self.health = 75
        self.weight = 7
        self.happiness = 5
        self.age = 0
    }
    
    func feedTamagotchiMeal() {
        hunger -= 5
        weight += 3
        happiness += 5
        health += 5
        if hunger < 6 {
            health -= 10
            happiness -= 1
        }
    }
    
    func feedTamagotchiSnack() {
        hunger -= 1
        weight += 1
        happiness += 3
        health += 1
        if hunger < 4 {
            health -= 5
            happiness -= 1
        }
    }
    
    func playGame() {
        happiness += 5
    }
    
    func decreaseHealthAndHappiness() {
        health -= 5
        happiness -= 3
    }
    
    func increaseAge() {
        age += 1
    }
    
    func giveMedicine() {
        health += 20
    }
    
    func increaseHunger() {
        hunger += 1
    }
    
    func decreaseWeight() {
        weight -= 1
    }
}
