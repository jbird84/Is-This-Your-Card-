//
//  ContentView.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 7/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var deck: Deck = Deck()
 //   @State var theCard: Card
    @State var newDeck: [Card]
    var body: some View {
        NavigationView {
            ZStack {
                Image("coolBG")
                    .ignoresSafeArea()
                ForEach(deck.cards) { card in
                    CardView(card: card)
                        .zIndex(self.deck.zIndex(of: card))
                        .shadow(radius: 2)
                        .offset(y: self.deck.deckOffset(of: card))
                        .scaleEffect(x: self.deck.scale(of: card), y: self.deck.scale(of: card))
                        .gesture(
                            DragGesture()
                                .onChanged({ (drag) in
                                
                                    if self.deck.activeCard == nil {
                                        self.deck.activeCard = card
                                    }
                                    if card != self.deck.activeCard {return}
                                
                                    withAnimation(.spring()) {
                                        self.deck.topCardOffset = drag.translation
                                        
                                        if
                                            drag.translation.width < -200 ||
                                            drag.translation.width > 200 ||
                                            drag.translation.height < -250 ||
                                            drag.translation.height > 250 {
                                              
                                            self.deck.moveToBack(card)
                                        } else {
                                            self.deck.moveToFront(card)
                                        }
                                    }
                                })
                                .onEnded({ (drag) in
                                    withAnimation(.spring()) {
                                        self.deck.activeCard = nil
                                        self.deck.topCardOffset = .zero
                                    }
                                })
                        )
                        .offset(x: self.offset(for: card).width, y: self.offset(for: card).height)
                        .rotationEffect(self.rotation(for: card))
                        .onTapGesture {
                            //removes top card/selected card and adds to new deck.
                            let selectedCard = deck.cards.removeFirst()
                            //shuffle the deck of cards
                            deck.cards.shuffle()
                            
                            //adds the selected card to a new deck
                            newDeck.append(selectedCard)
                            
                            //Removes the first item in new deck array which is an empty string
                            newDeck.removeFirst()
                            
                            //Add 11 random items to the new deck
                            newDeck.append(deck.cards[0])
                            newDeck.append(deck.cards[10])
                            newDeck.append(deck.cards[22])
                            newDeck.append(deck.cards[28])
                            newDeck.append(deck.cards[33])
                            newDeck.append(deck.cards[13])
                            newDeck.append(deck.cards[44])
                            newDeck.append(deck.cards[49])
                            newDeck.append(deck.cards[31])
                            newDeck.append(deck.cards[16])
                            newDeck.append(deck.cards[15])
                            
                            //shuffle the new deck so selected card is not the first item.
                            newDeck.shuffle()
                        }
                }
            }
            NavigationLink(
                destination: PresentView(contentView: ContentView(newDeck: newDeck)),
                label: {
                    Text("Navigate")
                })
        }
    }
    
    func offset(for card: Card) -> CGSize {
        if card != self.deck.activeCard {return .zero}
        
        return deck.topCardOffset
    }
    
    func rotation(for card: Card) -> Angle {
        guard let activeCard = self.deck.activeCard
            else {return .degrees(0)}
        
        if card != activeCard {return .degrees(0)}
        
        return deck.rotation(for: activeCard, offset: deck.topCardOffset)
    }
    
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
