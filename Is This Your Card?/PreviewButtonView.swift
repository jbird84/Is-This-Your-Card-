//
//  PreviewButtonView.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 8/4/21.
//

import SwiftUI

struct PreviewButtonView: View {
    @Binding var buttonText: String
    @Binding var isPressed: Bool
    @Binding var oneIsTapped: Bool
    @Binding var twoIsTapped: Bool
    @Binding var threeIsTapped: Bool
    @Binding var fourIsTapped: Bool
    @Binding var navTitle: String
    
    var body: some View {
        Button(buttonText) {
            withAnimation(.spring(response: 0.9, dampingFraction: 0.7)) {
                isPressed.toggle()
                if !isPressed {
                    navTitle = "Select Two Piles"
                } else {
                    navTitle = "Select One Pile"
                }
                
                oneIsTapped = false
                twoIsTapped = false
                threeIsTapped = false
                fourIsTapped = false
            }
            
        }
        .padding()
        .modifier(SetButtonStyle(buttonBackground: Color.init(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09359056122)), buttonForegroundColor: Color.init(#colorLiteral(red: 0.8957386613, green: 0.6874358058, blue: 0.5186184049, alpha: 1)), buttonTextSize: 40, buttonCornerRadius: 25, buttonWidth: UIScreen.screenWidth - 80))
        .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.black, lineWidth: 1))
    }
    }

//struct RegisterButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        PreviewButtonView(buttonText: .constant("Continue"), isPressed: .constant(true))
//    }
//}
