//
//  RenderCircleButtons.swift
//  DoctorLabIOS
//
//  Created by user225687 on 11/19/23.
//

import SwiftUI
struct ButtonListView: View {
    var spacingBetween: CGFloat
    let buttonsData: [[String: String]]
    var font: Font
    var textColor: Color
    var buttonSize: CGFloat
    var iconSize: CGFloat
    var spacing: CGFloat
    var padding: CGFloat
    var buttonColor: Color
    
    var body: some View {
        HStack(alignment: .center, spacing: spacingBetween) {
                    ForEach(buttonsData, id: \.self) { button in
                        CircleButton(text: button["text"] ?? "", font: font, textColor: textColor,icon: button["icon"] ?? "", buttonSize: buttonSize, iconSize: iconSize, spacing: spacing, padding: padding, buttonColor: buttonColor)
                    }
                }
    }
}
// Пример использования функции
struct renderCircleButtonssView: PreviewProvider {
    static var previews: some View {
        let buttons: [[String: String]] = [
            ["text": "Covid 19", "icon": "search-normal"],
            ["text": "Doctor", "icon": "icon2"],
            ["text": "Medicine", "icon": "icon3"],
            ["text": "Hospital", "icon": ""]
        ]
        
        ButtonListView(spacingBetween:13, buttonsData: buttons, font: Fonts.categories,textColor: CustomColors.grey,buttonSize: 72 ,iconSize:24, spacing: 8, padding: 24, buttonColor: .blue)
    }
}
