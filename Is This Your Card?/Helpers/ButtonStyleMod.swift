//
//  ButtonStyleMod.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 8/4/21.
//

import SwiftUI

struct SetButtonStyle: ViewModifier {
    
    var buttonBackground: Color
    var buttonForegroundColor: Color
    var buttonTextSize: CGFloat
    var buttonCornerRadius: CGFloat
    var buttonWidth: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(width: buttonWidth, height: 50, alignment: .center)
            .background(buttonBackground)
            .foregroundColor(buttonForegroundColor)
            .font(.custom("", size: buttonTextSize))
            .cornerRadius(buttonCornerRadius)
    }
}


