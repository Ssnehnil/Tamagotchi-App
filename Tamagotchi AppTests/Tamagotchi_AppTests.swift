//
//  Tamagotchi_AppTests.swift
//  Tamagotchi AppTests
//
//  Created by Ghosh, Ssnehnil (BJH) on 20/01/2022.
//

import XCTest
@testable import Tamagotchi_App

class Tamagotchi_AppTests: XCTestCase {

    func testTamagotchiDisplayVariables() {
        let tamagotchi = Tamagotchi(hunger: 5, dead: false, health: 75, weight: 7, happiness: 1)
        XCTAssertEqual(tamagotchi.hunger, 5)
        XCTAssertEqual(tamagotchi.dead, false)
        XCTAssertEqual(tamagotchi.health, 75)
        XCTAssertEqual(tamagotchi.weight, 7)
        XCTAssertEqual(tamagotchi.happiness, 1)
    }

}
