//
//  CardView.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 7/27/21.
//

import SwiftUI

struct CardView: View {
    
  let card: Card
  
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



//ZSTACK
//ZStack {
//    Image("coolBG")
//        .ignoresSafeArea()
//    VStack {
//            card
//                .resizable()
//                .frame(width: 200, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                        .padding()
//                .background(Color.init(#colorLiteral(red: 0.6163820876, green: 0.4452722548, blue: 0.400047531, alpha: 0.9656409439)))
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 20)
//                                .stroke(Color.black, lineWidth: 3)
//
//                        )
//
//    }.cornerRadius(18)
//
//}
