//
//  Game.swift
//  Bullseye
//
//  Created by Jiwon Yoon on 2022/12/25.
//

import Foundation


struct Game {
    var target: Int = Int.random(in: 1..<100)
    var score: Int = 0
    var round: Int = 1

    func points(sliderValue: Int) -> Int {
        let diff = abs(sliderValue - target)
        let bonus: Int

        if diff == 0 {
            bonus = 100
        } else if diff <= 2 {
            bonus = 50
        } else {
            bonus = 0
        }
        return 100 - diff + bonus
    }

    mutating func startNewRound(points: Int){
        round += 1
        score += points
        target = Int.random(in: 1..<100)
    }

    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1..<100)
    }
}
