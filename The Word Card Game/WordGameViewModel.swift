//
//  WordGameViewModel.swift
//  The Word Card Game
//
//  Created by Samuel Dalafiari on 29/01/2023.
//

import Foundation
import SwiftUI

extension ContentView {
    @MainActor class WordGameViewModel: ObservableObject {
        @Published var playerCard: String = "back"
        @Published var cpuCard: String = "back"
        @Published var backgroundImage: String = "background-cloth"
        @Published var playerScore: Int = 0
        @Published var cpuScore: Int = 0

        private let availableCards: [Int] = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
        private let availableBackground: [String] = ["cloth", "plain", "wood-cartoon", "wood-grain"]
       
        func deal() {
            
            let playerNewCard = availableCards.randomElement()!
            let cpuNewCard = availableCards.randomElement()!
            
            var playerNewScore: Int = playerScore
            var cpuNewScore: Int = cpuScore
            
            if playerNewCard > cpuNewCard {
                playerNewScore += 1
            } else if cpuNewCard > playerNewCard {
                cpuNewScore += 1
            }
            
            

            withAnimation {
                playerCard = "card\(playerNewCard)"
                cpuCard = "card\(cpuNewCard)"
                
                playerScore = playerNewScore
                cpuScore = cpuNewScore
                
            }
            
        }
    }
}
