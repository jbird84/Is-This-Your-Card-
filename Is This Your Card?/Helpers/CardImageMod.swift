//
//  CardImageMod.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 8/2/21.
//

import SwiftUI

extension Image {
    
    func cardImageMod(isTapped: Bool, cardColor: Color, width: CGFloat, height: CGFloat, cornerRadius: CGFloat, namespace: Namespace.ID) -> some View {
        self
            .resizable()
            .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .matchedGeometryEffect(id: "4cards", in: namespace)
                    .foregroundColor(isTapped ? Color.blue : cardColor))
    }
}
