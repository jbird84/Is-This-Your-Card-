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
