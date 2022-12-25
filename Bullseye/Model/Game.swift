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
        var difference = sliderValue - target
        if difference < 0 {
            difference *= -1
        }

        var awardedPoints = 100 - difference

        return awardedPoints
    }
}
