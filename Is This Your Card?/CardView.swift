//
//  CardView.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 7/27/21.
//

import SwiftUI

struct CardView: View {
    
    let card: Card
    @Namespace var namespace
    
    var body: some View {
        VStack {
            Spacer()
            Image(card.card)
                .resizable()
                .frame(width: 180, height: 280, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        
        .padding()
        .frame(width: 200, height: 300)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(card.color)
        )
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card(card: "club5"))
    }
}



