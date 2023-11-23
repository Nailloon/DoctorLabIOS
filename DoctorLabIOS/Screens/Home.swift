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
                        WelcomeBanner(userName: "James").padding(.bottom, 32)
                        DoctorAppointment(doctor: "drsyahir", doctorCategory: "generaldoctor", day: "dayJune", time: "timeJune").padding(.bottom, 20)
                        SearchButton(text: "searchText").padding(.bottom, 24)
                        RenderCircleButtons(spacingBetween:13, buttonsData: buttons, font: Fonts.PopMed_15, textColor: CustomColors.grey, buttonSize: 72 ,iconSize:24, spacing: 8, padding: 24, buttonColor: CustomColors.backgroundWhite).padding(.bottom, 32)
                    }
                    VStack(alignment:.leading){
                        Text(LocalizedStringKey("near")).padding(.bottom, 16).font(Fonts.PopSemiBold_16).foregroundColor(CustomColors.darkBlue)
                        RenderDoctorCards(spacingBetween: 12, doctorsData: doctors, cardColor: CustomColors.backgroundWhite, doctorNameColor: CustomColors.darkBlue, doctorCategoryColor: CustomColors.grey, font0: Fonts.PopMed_14, text0Color: CustomColors.grey, icon0: "location", font12: Fonts.PopMed_12, text1Color: CustomColors.orange, icon1: "clockOrange", text2Color: CustomColors.blue, icon2: "clockBlue")
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
