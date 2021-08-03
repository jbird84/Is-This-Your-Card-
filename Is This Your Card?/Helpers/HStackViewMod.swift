//
//  HStackViewMod.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 8/2/21.
//

import SwiftUI

struct HStackViewMod: ViewModifier {
    
    var paddingBottom: CGFloat
    var paddingLeading: CGFloat
    var paddingTrailing: CGFloat
    
    func body(content: Content) -> some View {
        content
            .padding(.bottom, paddingBottom)
            .padding(.leading, paddingLeading)
            .padding(.trailing, paddingTrailing)
    }
}
