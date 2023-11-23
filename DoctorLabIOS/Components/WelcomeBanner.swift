//
//  WelcomeBanner.swift
//  DoctorLabIOS
//
//  Created by user225687 on 11/16/23.
//

import SwiftUI
struct WelcomeBanner: View {
    var userName: String
    var body: some View {
        HStack(alignment: .center){
            VStack(alignment: .leading, spacing: 6){
                Text(LocalizedStringKey("hello")).font(Fonts.hello).foregroundColor(CustomColors.grey)
                Text(LocalizedStringKey("welcome_message")).font(Fonts.hi)+Text(userName).font(Fonts.hi).foregroundColor(CustomColors.darkBlue)
            }
            Spacer()
            Image("Frame")
                .frame(width: SizeManager.smallIconSize, height: SizeManager.smallIconSize)
        }.padding(.trailing, 24).frame(width: SizeManager.windowWidth)
    }
}
struct WelcomeBanner_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBanner(userName: "James")
    }
}