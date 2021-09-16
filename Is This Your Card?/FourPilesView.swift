//
//  FourPilesView.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 9/14/21.
//

import SwiftUI

struct FourPilesView: View {
    
    @Binding var contentView: ContentView
    @Binding var oneIsTapped: Bool
    @Binding var twoIsTapped: Bool
    @Binding var threeIsTapped: Bool
    @Binding var fourIsTapped: Bool
    @Namespace var namespace
    
    var body: some View {
        VStack {
            let cardColor = contentView.theCard.color
            Spacer()
            
            //This is the top 4 cards
            HStack {
                Image(contentView.newDeck[0].card)
                    .cardImageMod(isTapped: oneIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
                
                VStack {
                    Image(contentView.newDeck[3].card)
                        .cardImageMod(isTapped: oneIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
                    
                    Image(contentView.newDeck[6].card)
                        .cardImageMod(isTapped: oneIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
                    
                }
                Image(contentView.newDeck[9].card)
                    .cardImageMod(isTapped: oneIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
            }
            .modifier(HStackViewMod(paddingBottom: -60, paddingLeading: 150, paddingTrailing: 0))
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1)) {
                    oneIsTapped.toggle()
                }
                
                
            }
            .padding(.top, 30)
            
            
            //This is the second to top 4 cards
            HStack {
                Image(contentView.newDeck[12].card)
                    .cardImageMod(isTapped: twoIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
                
                VStack {
                    Image(contentView.newDeck[15].card)
                        .cardImageMod(isTapped: twoIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
                    
                    Image(contentView.newDeck[1].card)
                        .cardImageMod(isTapped: twoIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
                    
                }
                Image(contentView.newDeck[5].card)
                    .cardImageMod(isTapped: twoIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
            }
            .modifier(HStackViewMod(paddingBottom: -60, paddingLeading: 0, paddingTrailing: 150))
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1)) {
                    twoIsTapped.toggle()
                }
            }
            
            
            //Third to top set of 4 cards
            HStack {
                Image(contentView.newDeck[7].card)
                    .cardImageMod(isTapped: threeIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
                
                VStack {
                    Image(contentView.newDeck[11].card)
                        .cardImageMod(isTapped: threeIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
                    
                    Image(contentView.newDeck[14].card)
                        .cardImageMod(isTapped: threeIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
                    
                }
                Image(contentView.newDeck[2].card)
                    .cardImageMod(isTapped: threeIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
            }
            .modifier(HStackViewMod(paddingBottom: -60, paddingLeading: 150, paddingTrailing: 0))
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1)) {
                    threeIsTapped.toggle()
                }
            }
            
            
            //Bottom set of 4 cards
            HStack {
                Image(contentView.newDeck[4].card)
                    .cardImageMod(isTapped: fourIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
                
                VStack {
                    Image(contentView.newDeck[8].card)
                        .cardImageMod(isTapped: fourIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
                    
                    Image(contentView.newDeck[10].card)
                        .cardImageMod(isTapped: fourIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
                    
                }
                Image(contentView.newDeck[14].card)
                    .cardImageMod(isTapped: fourIsTapped, cardColor: cardColor, width: 25, height: 70, cornerRadius: 10, namespace: namespace)
            }
            .modifier(HStackViewMod(paddingBottom: 10, paddingLeading: 0, paddingTrailing: 150))
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1)) {
                    fourIsTapped.toggle()
                }
            }
        }
    }
}
