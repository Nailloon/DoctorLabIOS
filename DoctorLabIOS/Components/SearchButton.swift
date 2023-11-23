//
//  SearchButton.swift
//  DoctorLabIOS
//
//  Created by user225687 on 11/17/23.
//

import SwiftUI
struct SearchButton: View{
    @State private var isButtonPressed = false
    var text: String
    var body: some View{
        Button(action: {
            self.isButtonPressed.toggle()
        }) {
            HStack {
                Image("search-normal")
                Text(LocalizedStringKey(text)).font(Fonts.categories).foregroundColor(CustomColors.grey)
            }
            .padding(16)
            .frame(width: SizeManager.windowWidth, alignment: .leading) .background(isButtonPressed ? Color.gray.opacity(0.2) : CustomColors.backgroundWhite)
            .cornerRadius(12)
        }
    }
}
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SearchButton(text:"searchText")
    }
}
