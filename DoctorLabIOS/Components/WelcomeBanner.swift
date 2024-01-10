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
            VStack(alignment: .leading, spacing:  PadSpacing.smallestSpace){
                Text(LocalizedStringKey("hello")).font(Fonts.PopMed_16).foregroundColor(CustomColors.grey)
                Text(LocalizedStringKey("welcome_message")).font(Fonts.PopBold_20)+Text(userName).font(Fonts.PopBold_20).foregroundColor(CustomColors.darkBlue)
            }
            Spacer()
            Image("Frame")
                .frame(width: SizeManager.smallIconSize, height: SizeManager.smallIconSize)
        }.padding(.trailing, PadSpacing.biggestSpace).frame(width: SizeManager.windowWidth)
    }
}
struct WelcomeBanner_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBanner(userName: "James")
    }
}
