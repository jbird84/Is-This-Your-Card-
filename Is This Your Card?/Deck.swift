//
//  ArrayOfCardImages.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 7/28/21.
//

import SwiftUI

struct Deck {
    
    var topCardOffset: CGSize = .zero
    var activeCard: Card? = nil 
    
    var cards = [
        
        Card(card: "club1"),
        Card(card: "club2"),
        Card(card: "club3"),
        Card(card: "club4"),
        Card(card: "club5"),
        Card(card: "club6"),
        Card(card: "club7"),
        Card(card: "club8"),
        Card(card: "club9"),
        Card(card: "club10"),
        Card(card: "club11"),
        Card(card: "club12"),
        Card(card: "club13"),
        Card(card: "diamond1"),
        Card(card: "diamond2"),
        Card(card: "diamond3"),
        Card(card: "diamond4"),
        Card(card: "diamond5"),
        Card(card: "diamond6"),
        Card(card: "diamond7"),
        Card(card: "diamond8"),
        Card(card: "diamond9"),
        Card(card: "diamond10"),
        Card(card: "diamond11"),
        Card(card: "diamond12"),
        Card(card: "diamond13"),
        Card(card: "heart1"),
        Card(card: "heart2"),
        Card(card: "heart3"),
        Card(card: "heart4"),
        Card(card: "heart5"),
        Card(card: "heart6"),
        Card(card: "heart7"),
        Card(card: "heart8"),
        Card(card: "heart9"),
        Card(card: "heart10"),
        Card(card: "heart11"),
        Card(card: "heart12"),
        Card(card: "heart13"),
        Card(card: "spade1"),
        Card(card: "spade2"),
        Card(card: "spade3"),
        Card(card: "spade4"),
        Card(card: "spade5"),
        Card(card: "spade6"),
        Card(card: "spade7"),
        Card(card: "spade8"),
        Card(card: "spade9"),
        Card(card: "spade10"),
        Card(card: "spade11"),
        Card(card: "spade12"),
        Card(card: "spade13")
    ]
    
    var count: Int {
        return cards.count
    }

    func position(of card: Card) -> Int {
        return cards.firstIndex(of: card) ?? 0
    }

    func scale(of card: Card) -> CGFloat {
        let deckPosition = position(of: card)
        let scale = CGFloat(deckPosition) * 0.02
        return CGFloat(1 - scale)
    }

    func deckOffset(of card: Card) -> CGFloat {
        let deckPosition = position(of: card)
        let offset = deckPosition * -10
        return CGFloat(offset)
    }

    func zIndex(of card: Card) -> Double {
        return Double(count - position(of: card))
    }
    
    func rotation(for card: Card, offset: CGSize = .zero) -> Angle {
        return .degrees(Double(offset.width) / 20.0)
    }
    
    
    mutating func moveToBack(_ state: Card) {
        let topCard = cards.remove(at: position(of: state))
        cards.append(topCard)
    }

    mutating func moveToFront(_ state: Card) {
        let topCard = cards.remove(at: position(of: state))
        cards.insert(topCard, at: 0)
    }
    
}
