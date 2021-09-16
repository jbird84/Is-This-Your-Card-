//
//  TwoPilesView.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 9/13/21.
//

import SwiftUI

struct TwoPilesView: View {
    
    @Binding var contentView: ContentView
    @Binding var oneIsTapped: Bool
    @Binding var twoIsTapped: Bool
    @State var navTitleText = "Select One Pile"
    @Namespace var namespace
    
    var body: some View {
        VStack{
            let cardColor = contentView.theCard.color
            //This is the top 4 cards
            HStack {
                
                Image(contentView.newDeck[0].card)
               
                    .cardImageMod(isTapped: oneIsTapped, cardColor: cardColor, width: 50, height: 95, cornerRadius: 10, namespace: namespace)
                    
                
                VStack {
                    Image(contentView.newDeck[3].card)
                        .cardImageMod(isTapped: oneIsTapped, cardColor: cardColor, width: 50, height: 95, cornerRadius: 10, namespace: namespace)
                    
                    Image(contentView.newDeck[6].card)
                        .cardImageMod(isTapped: oneIsTapped, cardColor: cardColor, width: 50, height: 95, cornerRadius: 10, namespace: namespace)
                    
                }
                Image(contentView.newDeck[9].card)
                    .cardImageMod(isTapped: oneIsTapped, cardColor: cardColor, width: 50, height: 95, cornerRadius: 10, namespace: namespace)
            }
            .modifier(HStackViewMod(paddingBottom: 70, paddingLeading: 0, paddingTrailing: 0))
            .padding(.top, 100)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1)) {
                    oneIsTapped.toggle()
                }
            }
            
            
        
            
            
            //This is the bottom 4 cards
            HStack {
                Image(contentView.newDeck[12].card)
                    .cardImageMod(isTapped: twoIsTapped, cardColor: cardColor, width: 50, height: 95, cornerRadius: 10, namespace: namespace)
                
                VStack {
                    Image(contentView.newDeck[15].card)
                        .cardImageMod(isTapped: twoIsTapped, cardColor: cardColor, width: 50, height: 95, cornerRadius: 10, namespace: namespace)
                    
                    Image(contentView.newDeck[1].card)
                        .cardImageMod(isTapped: twoIsTapped, cardColor: cardColor, width: 50, height: 95, cornerRadius: 10, namespace: namespace)
                    
                }
                Image(contentView.newDeck[5].card)
                    .cardImageMod(isTapped: twoIsTapped, cardColor: cardColor, width: 50, height: 95, cornerRadius: 10, namespace: namespace)
            }
            .modifier(HStackViewMod(paddingBottom: 0, paddingLeading: 0, paddingTrailing: 0))
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1)) {
                    twoIsTapped.toggle()
                }
            }
        }
    }
}
