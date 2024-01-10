//
//  Home.swift
//  DoctorLabIOS
//
//  Created by Imac on 24.11.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            ZStack {
                ScrollView {
                    VStack {
                        WelcomeBanner(userName: "James").padding(.bottom, PadSpacing.widestSpace)
                        DoctorAppointment(doctor: "drsyahir", doctorCategory: "generaldoctor", day: "dayJune", time: "timeJune").padding(.bottom, PadSpacing.hugeSpace)
                        SearchButton(text: "searchText").padding(.bottom, PadSpacing.biggestSpace)
                        RenderCircleButtons(spacingBetween:PadSpacing.moreNormalSpace, buttonsData: buttons, font: Fonts.PopMed_15, textColor: CustomColors.grey, buttonSize: SizeManager.buttonSize ,iconSize:SizeManager.mediumIconSize, spacing: PadSpacing.smallSpace, padding: PadSpacing.biggestSpace, buttonColor: CustomColors.backgroundWhite).padding(.bottom, PadSpacing.widestSpace)
                    }
                    VStack(alignment:.leading){
                        Text(LocalizedStringKey("near")).padding(.bottom, PadSpacing.bigSpace).font(Fonts.PopSemiBold_16).foregroundColor(CustomColors.darkBlue)
                        RenderDoctorCards(spacingBetween: PadSpacing.normalSpace, doctorsData: doctors, cardColor: CustomColors.backgroundWhite, doctorNameColor: CustomColors.darkBlue, doctorCategoryColor: CustomColors.grey, font0: Fonts.PopMed_14, text0Color: CustomColors.grey, icon0: "location", font12: Fonts.PopMed_12, text1Color: CustomColors.orange, icon1: "clockOrange", text2Color: CustomColors.blue, icon2: "clockBlue")
                            .padding(.bottom, PadSpacing.widestSpace)
                        
                    }
                }
                }
            }
        }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
