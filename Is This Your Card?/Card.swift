//
//  Card.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 7/27/21.
//

import SwiftUI

struct Card: Identifiable, Equatable {
    let id = UUID()
    let card: String
    let color = Color.init(#colorLiteral(red: 0.8957386613, green: 0.6874358058, blue: 0.5186184049, alpha: 1))
}


//struct Card: Identifiable, Equatable {
////    let id = UUID()
////    let question: String
////    let color: Color
////}
//    let rank: Rank
//    let suit: Suit
//    let id = UUID()
//
//    enum Rank: Int{
//        case ace = 1, two, three, four, five, six, seven, eight, nine, ten
//        case jack, queen, king
//    }
//
//    enum Suit: String {
//        case diamond, heart, spade, club
//    }
//    var rankDescription: String {
//        switch rank {
//        case .ace:
//            return "Ace"
//        case .jack:
//            return "Jack"
//        case .queen:
//            return "Queen"
//        case .king:
//            return "King"
//        default:
//            return String(rank.rawValue)
//        }
//    }
//    var suitDescription: String {
//        switch suit {
//        case .diamond:
//            return "♦️"
//        case .heart:
//            return "♥️"
//        case .spade:
//            return "♠️"
//        case .club:
//            return "♣️"
//        }
//    }
//    // Image Name
//    var imageName: String {
//        return suit.rawValue + String(rank.rawValue)
//    }
//
//
//}
//
//let card = Card(rank: .ace, suit: .diamond)
