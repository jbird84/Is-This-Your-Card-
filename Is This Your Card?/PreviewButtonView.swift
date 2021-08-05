//
//  PreviewButtonView.swift
//  Is This Your Card?
//
//  Created by Kinney Kare on 8/4/21.
//

import SwiftUI

struct PreviewButtonView: View {
    @Binding var buttonText: String
    var body: some View {
        Button(buttonText) {
            print("button text pressed")
        }
        .padding()
        .modifier(SetButtonStyle(buttonBackground: Color.init(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09359056122)), buttonForegroundColor: Color.init(#colorLiteral(red: 0.8957386613, green: 0.6874358058, blue: 0.5186184049, alpha: 1)), buttonTextSize: 40, buttonCornerRadius: 25, buttonWidth: UIScreen.screenWidth - 80))
        .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.black, lineWidth: 1))
    }
    }

struct RegisterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewButtonView(buttonText: .constant("Continue"))
    }
}
