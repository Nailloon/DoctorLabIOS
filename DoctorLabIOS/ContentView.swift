//
//  ContentView.swift
//  DoctorLabIOS
//
//  Created by user225687 on 11/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            WelcomeBanner(userName: "James")
            DoctorAppointment(doctor: "drsyahir", doctorCategory: "generaldoctor", day: "dayJune", time: "timeJune")
            SearchButton(text:"searchText")
            ButtonListView(spacingBetween:13, buttonsData: buttons, font: Fonts.categories,textColor: CustomColors.grey,buttonSize: 72 ,iconSize:24, spacing: 8, padding: 24, buttonColor: CustomColors.backgroundWhite)
        }.frame(width: SizeManager.allScreenWidth, height: SizeManager.allScreenHeight)
        .background(.white)
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
        

