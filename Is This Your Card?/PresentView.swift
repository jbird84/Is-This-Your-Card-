//
//  PresentView.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 7/29/21.
//

import SwiftUI

struct PresentView: View {
    @State var contentView: ContentView
    @State var oneIsTapped = false
    @State var twoIsTapped = false
    @State var threeIsTapped = false
    @State var fourIsTapped = false
    @State var navTitleText = "Select Two Piles"
    @State var buttonText = "Continue"
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            
            
            Image("coolBG")
                .ignoresSafeArea()
                
            
            VStack {
            if !show {
                
                FourPilesView(contentView: $contentView, oneIsTapped: $oneIsTapped, twoIsTapped: $twoIsTapped, threeIsTapped: $threeIsTapped, fourIsTapped: $fourIsTapped)
             //  .matchedGeometryEffect(id: "4cards", in: namespace)
               .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            } else {
                TwoPilesView(contentView: $contentView, oneIsTapped: $oneIsTapped, twoIsTapped: $twoIsTapped, navTitleText: navTitleText)
           //     .matchedGeometryEffect(id: "4cards", in: namespace)
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            
                PreviewButtonView(buttonText: $buttonText, isPressed: $show, oneIsTapped: $oneIsTapped, twoIsTapped: $twoIsTapped, threeIsTapped: $threeIsTapped, fourIsTapped: $fourIsTapped, navTitle: $navTitleText)
                    .padding(.bottom, 200)
                
                
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(navTitleText)
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
