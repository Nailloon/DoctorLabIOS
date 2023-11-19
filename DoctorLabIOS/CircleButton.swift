//
//  CircleButton.swift
//  DoctorLabIOS
//
//  Created by user225687 on 11/19/23.
//

import SwiftUI

struct CircleButton: View {
    @State private var isButtonPressed = false
    var text: String
    var font: Font
    var textColor: Color
    var icon: String
    var buttonSize: CGFloat
    var iconSize: CGFloat
    var spacing: CGFloat
    var padding: CGFloat
    var buttonColor: Color

    var body: some View {
        VStack(spacing:spacing){
            Button(action: {
                self.isButtonPressed.toggle()
            }) {
                Image(icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(padding)
                .background(buttonColor)
                .clipShape(Circle())
                .frame(width: buttonSize,height: buttonSize)
            }.frame(width: buttonSize,height: buttonSize)
            Text(LocalizedStringKey(text))
                .font(font)
                .foregroundColor(textColor)
            
        }
        
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton(text: "Button",font: Fonts.categories, textColor: CustomColors.grey,icon: "search-normal", buttonSize: 72 ,iconSize: 24, spacing: 8, padding: 24, buttonColor: Color.black)
    }
}
