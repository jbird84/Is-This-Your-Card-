//
//  CardImageMod.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 8/2/21.
//

import SwiftUI

extension Image {
    func cardImageMod(isTapped: Bool, cardColor: Color) -> some View {
        self
            .resizable()
            .frame(width: 25, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(isTapped ? Color.blue : cardColor))
    }
}
