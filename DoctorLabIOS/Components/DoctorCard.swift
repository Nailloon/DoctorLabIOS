//
//  DoctorCard.swift
//  DoctorLabIOS
//
//  Created by Imac on 21.11.2023.
//

import SwiftUI
struct DoctorCard: View{
    var cardColor: Color
    var doctorName: String
    var doctorNameColor: Color
    var doctorCategory: String
    var doctorCategoryColor: Color
    var avatar: String
    var font0: Font
    var icon0: String
    var text0: String
    var text0Color: Color
    var font12: Font
    var icon1: String
    var text1: String
    var text1Color: Color
    var icon2: String
    var text2: String
    var text2Color: Color
    var body: some View{
        VStack(spacing: 16) {
            HStack(){
                ZStack(){
                    Circle()
                        .fill(Color.white)
                        .frame(width: SizeManager.doctorIconSize, height: SizeManager.doctorIconSize)
                    
                    Image(avatar)
                        .resizable()
                        .aspectRatio(contentMode: .fill).frame(width: SizeManager.doctorIconSize, height: SizeManager.doctorIconSize)
                        .clipped()
                        .clipShape(Circle())
                }
                VStack(alignment: .leading, spacing: 8) {
                    Text(LocalizedStringKey(doctorName))
                        .font(Fonts.PopBold_16).foregroundColor(doctorNameColor)
                    Text(LocalizedStringKey(doctorCategory)).font(Fonts.PopMed_14).foregroundColor(doctorCategoryColor)
                }
                .padding(0)
                Spacer()
                HStack(){
                    Image(icon0).frame(width: SizeManager.smallIconSize, height: SizeManager.smallIconSize)
                    Text(LocalizedStringKey(text0)).font(font0).foregroundColor(text0Color)
                }
            }
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.white.opacity(0.15))
            HStack(spacing: 12){
                        HStack(spacing: 6){
                            Image(icon1).frame(width: SizeManager.smallIconSize,height: SizeManager.smallIconSize)
                            Text(LocalizedStringKey(text1)).font(font12).foregroundColor(text1Color)                }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity,alignment: .leading)
                HStack(spacing: 6){
                            Image(icon2).frame(width: SizeManager.smallIconSize, height: SizeManager.smallIconSize)
                            Text(LocalizedStringKey(text2)).font(font12).foregroundColor(text2Color)
                            }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity,alignment: .leading)
            }
        }
        .padding(.horizontal,16).padding(.vertical,20)
        .frame(width: SizeManager.windowWidth, alignment: .top)
        .background(cardColor)
        .cornerRadius(12)
    }
}
struct DoctorCard_Previews: PreviewProvider {
    static var previews: some View {
        DoctorCard(cardColor: CustomColors.backgroundWhite, doctorName: "docName2", doctorNameColor: CustomColors.darkBlue, doctorCategory: "docCategory2", doctorCategoryColor: CustomColors.grey, avatar: "doctoR2", font0: Fonts.PopMed_14, icon0: "location", text0: "distance", text0Color: CustomColors.grey, font12: Fonts.PopMed_12, icon1: "clockOrange", text1: "rating", text1Color: CustomColors.orange, icon2: "clockBlue", text2: "time", text2Color: CustomColors.blue)
    }
}
