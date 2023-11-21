//
//  RenderDoctorCards.swift
//  DoctorLabIOS
//
//  Created by Imac on 21.11.2023.
//

import SwiftUI
struct DoctorsListView: View {
    var spacingBetween: CGFloat
    let doctorsData: [[String: String]]
    var cardColor: Color
    var doctorNameColor: Color
    var doctorCategoryColor: Color
    var font0: Font
    var text0Color: Color
    var icon0: String
    var font12: Font
    var text1Color: Color
    var icon1: String
    var text2Color: Color
    var icon2: String
    
    var body: some View {
        VStack(alignment: .center, spacing: spacingBetween) {
                    ForEach(doctorsData, id: \.self) { doctor in
                       DoctorCard(cardColor: cardColor, doctorName: doctor["name"] ?? "", doctorNameColor: doctorNameColor, doctorCategory: doctor["category"] ?? "", doctorCategoryColor: doctorCategoryColor, avatar: doctor["avatar"] ?? "", font0: font0, icon0: icon0, text0: doctor["text0"] ?? "", text0Color: text0Color, font12: font12, icon1: icon1, text1: doctor["text1"] ?? "", text1Color: text1Color, icon2: icon2, text2: doctor["text2"] ?? "", text2Color: text2Color)
                    }
                }
    }
}
// Пример использования функции
struct renderDoctorCardsView: PreviewProvider {
    static var previews: some View {
        let doctors: [[String: String]] = [
            ["name": "docName2", "category":"docCategory2","avatar": "doctoR2", "text0":"distance", "text1":"rating","text2":"time"],
            ["name": "drsyahir", "category":"generaldoctor","avatar": "doctoR1", "text0":"distance", "text1":"rating","text2":"time"]
]
        
        DoctorsListView(spacingBetween: 12, doctorsData: doctors, cardColor: CustomColors.backgroundWhite, doctorNameColor: CustomColors.darkBlue, doctorCategoryColor: CustomColors.grey, font0: Fonts.doctorCategory, text0Color: CustomColors.grey, icon0: "location", font12: Fonts.details, text1Color: CustomColors.orange, icon1: "clockOrange", text2Color: CustomColors.blue, icon2: "clockBlue")
    }
}
