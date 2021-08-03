//
//  PresentView.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 7/29/21.
//

import SwiftUI

struct PresentView: View {
    
    var contentView: ContentView
    @State var oneIsTapped = false
    @State var twoIsTapped = false
    @State var threeIsTapped = false
    @State var fourIsTapped = false
    
    var body: some View {
        ZStack {
            let cardColor = contentView.theCard.color
            Spacer()
            Image("coolBG")
                .ignoresSafeArea()
            VStack {
                
                //This is the top 4 cards
                HStack {
                    Image(contentView.newDeck[0].card)
                        .cardImageMod(isTapped: oneIsTapped, cardColor: cardColor)
                    
                    VStack {
                        Image(contentView.newDeck[3].card)
                            .cardImageMod(isTapped: oneIsTapped, cardColor: cardColor)
                        
                        Image(contentView.newDeck[6].card)
                            .cardImageMod(isTapped: oneIsTapped, cardColor: cardColor)
                        
                    }
                    Image(contentView.newDeck[9].card)
                        .cardImageMod(isTapped: oneIsTapped, cardColor: cardColor)
                }
                .modifier(HStackViewMod(paddingBottom: -30, paddingLeading: 150, paddingTrailing: 0))
                .onTapGesture {
                    oneIsTapped.toggle()
                }
                
                
                //This is the second to top 4 cards
                HStack {
                    Image(contentView.newDeck[12].card)
                        .cardImageMod(isTapped: twoIsTapped, cardColor: cardColor)
                    
                    VStack {
                        Image(contentView.newDeck[15].card)
                            .cardImageMod(isTapped: twoIsTapped, cardColor: cardColor)
                        
                        Image(contentView.newDeck[1].card)
                            .cardImageMod(isTapped: twoIsTapped, cardColor: cardColor)
                        
                    }
                    Image(contentView.newDeck[5].card)
                        .cardImageMod(isTapped: twoIsTapped, cardColor: cardColor)
                }
                .modifier(HStackViewMod(paddingBottom: -30, paddingLeading: 0, paddingTrailing: 150))
                .onTapGesture {
                    twoIsTapped.toggle()
                }
                
                
                //Third to top set of 4 cards
                HStack {
                    Image(contentView.newDeck[7].card)
                        .cardImageMod(isTapped: threeIsTapped, cardColor: cardColor)
                    
                    VStack {
                        Image(contentView.newDeck[11].card)
                            .cardImageMod(isTapped: threeIsTapped, cardColor: cardColor)
                        
                        Image(contentView.newDeck[14].card)
                            .cardImageMod(isTapped: threeIsTapped, cardColor: cardColor)
                        
                    }
                    Image(contentView.newDeck[2].card)
                        .cardImageMod(isTapped: threeIsTapped, cardColor: cardColor)
                }
                .modifier(HStackViewMod(paddingBottom: -30, paddingLeading: 150, paddingTrailing: 0))
                .onTapGesture {
                    threeIsTapped.toggle()
                }
            
                
                //Bottom set of 4 cards
                HStack {
                    Image(contentView.newDeck[4].card)
                        .cardImageMod(isTapped: fourIsTapped, cardColor: cardColor)
                    
                    VStack {
                        Image(contentView.newDeck[8].card)
                            .cardImageMod(isTapped: fourIsTapped, cardColor: cardColor)
                        
                        Image(contentView.newDeck[10].card)
                            .cardImageMod(isTapped: fourIsTapped, cardColor: cardColor)
                        
                    }
                    Image(contentView.newDeck[14].card)
                        .cardImageMod(isTapped: fourIsTapped, cardColor: cardColor)
                }
                .modifier(HStackViewMod(paddingBottom: 0, paddingLeading: 0, paddingTrailing: 150))
                .onTapGesture {
                    fourIsTapped.toggle()
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct PresentView_Previews: PreviewProvider {
    static var previews: some View {
        PresentView(contentView: ContentView(theCard: Card(card: "spade11"), newDeck: [
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
            Card(card: "spade2"),
            Card(card: "diamond3"),
            Card(card: "club10"),
            Card(card: "spade11"),
            Card(card: "heart13")
        ]))
    }
}
