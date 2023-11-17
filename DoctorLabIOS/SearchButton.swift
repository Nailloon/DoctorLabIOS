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
                Text(NSLocalizedString(text, comment: "")).font(Fonts.categories).foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
            }
            .padding(16)
            .frame(width: SizeManager.windowWidth, alignment: .leading) .background(isButtonPressed ? Color.gray.opacity(0.2) : Color(red: 0.98, green: 0.98, blue: 0.98))
            .cornerRadius(12)
        }
    }
}
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SearchButton(text:"searchText")
    }
}
