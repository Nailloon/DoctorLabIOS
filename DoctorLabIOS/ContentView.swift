//
//  ContentView.swift
//  DoctorLabIOS
//
//  Created by user225687 on 11/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ZStack {
                ScrollView {
                    VStack {
                        WelcomeBanner(userName: "James").padding(.bottom, 32)
                        DoctorAppointment(doctor: "drsyahir", doctorCategory: "generaldoctor", day: "dayJune", time: "timeJune").padding(.bottom, 20)
                        SearchButton(text: "searchText").padding(.bottom, 24)
                        RenderCircleButtons(spacingBetween:13, buttonsData: buttons, font: Fonts.categories, textColor: CustomColors.grey, buttonSize: 72 ,iconSize:24, spacing: 8, padding: 24, buttonColor: CustomColors.backgroundWhite).padding(.bottom, 32)
                    }
                    VStack(alignment:.leading){
                        Text(LocalizedStringKey("near")).padding(.bottom, 16).font(Fonts.nearDoctor).foregroundColor(CustomColors.darkBlue)
                        RenderDoctorCards(spacingBetween: 12, doctorsData: doctors, cardColor: CustomColors.backgroundWhite, doctorNameColor: CustomColors.darkBlue, doctorCategoryColor: CustomColors.grey, font0: Fonts.doctorCategory, text0Color: CustomColors.grey, icon0: "location", font12: Fonts.details, text1Color: CustomColors.orange, icon1: "clockOrange", text2Color: CustomColors.blue, icon2: "clockBlue")
                    }
                }
                }
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        let buttons: [[String: String]] = [
            ["text": "Covid 19", "icon": "sun"],
            ["text": "Doctor", "icon": "profile-add"],
            ["text": "Medicine", "icon": "link"],
            ["text": "Hospital", "icon": "hospital"]
        ]
        let doctors: [[String: String]] = [
            ["name": "docName2", "category":"docCategory2","avatar": "doctoR2", "text0":"distance", "text1":"rating","text2":"time"],
            ["name": "drsyahir", "category":"generaldoctor","avatar": "doctoR1", "text0":"distance", "text1":"rating","text2":"time"]
        ]

