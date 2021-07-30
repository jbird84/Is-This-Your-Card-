//
//  Is_This_Your_Card_App.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 7/27/21.
//

import SwiftUI

@main
struct Is_This_Your_Card_App: App {
    var body: some Scene {
        WindowGroup {
            ContentView(newDeck: [Card(card: "")])
        }
    }
}
