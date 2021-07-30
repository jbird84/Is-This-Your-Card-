//
//  PresentView.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 7/29/21.
//

import SwiftUI

struct PresentView: View {
    
    var contentView: ContentView
    //@State var selectedCard: String
    
    var body: some View {
        ZStack {
            Image("coolBG")
                .ignoresSafeArea()
            VStack {
                Image(contentView.newDeck[0].card)
                    .resizable()
                    .frame(width: 40, height: 60)
               Image(contentView.newDeck[1].card)
                .resizable()
                .frame(width: 40, height: 60)
                Image(contentView.newDeck[2].card)
                    .resizable()
                    .frame(width: 40, height: 60)
                Image(contentView.newDeck[3].card)
                    .resizable()
                    .frame(width: 40, height: 60)
                Image(contentView.newDeck[4].card)
                    .resizable()
                    .frame(width: 40, height: 60)
                Image(contentView.newDeck[5].card)
                    .resizable()
                    .frame(width: 40, height: 60)
                VStack{
                Image(contentView.newDeck[6].card)
                    .resizable()
                    .frame(width: 40, height: 60)
                Image(contentView.newDeck[7].card)
                    .resizable()
                    .frame(width: 40, height: 60)
                Image(contentView.newDeck[8].card)
                    .resizable()
                    .frame(width: 40, height: 60)
                Image(contentView.newDeck[9].card)
                    .resizable()
                    .frame(width: 40, height: 60)
                Image(contentView.newDeck[10].card)
                    .resizable()
                    .frame(width: 40, height: 60)
                Image(contentView.newDeck[11].card)
                    .resizable()
                    .frame(width: 40, height: 60)
                }
        }
        }
    }
}

struct PresentView_Previews: PreviewProvider {
    static var previews: some View {
        PresentView(contentView: ContentView(newDeck: [
            Card(card: "club1"),
            Card(card: "club2"),
            Card(card: "club3"),
            Card(card: "club4"),
            Card(card: "diamond12"),
            Card(card: "diamond13"),
            Card(card: "heart1"),
            Card(card: "heart2"),
            Card(card: "heart12"),
            Card(card: "heart13"),
            Card(card: "spade1"),
            Card(card: "spade2")
        ]))
    }
}
