//
//  TabView.swift
//  DoctorLabIOS
//
//  Created by Imac on 24.11.2023.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case home
    case calendar
    case chat
    case profile

}

struct MyTabBar: View {
    @Binding var selectedTab: Tab
    var tabText: [Tab: String] = [
        .home: "Home",
        .calendar: "Calendar",
        .chat: "Chat",
        .profile: "Profile"
    ]
    var body: some View {
        HStack(spacing: 12){
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                HStack(alignment: .center, spacing: 8) {
                    HStack(alignment: .center, spacing: selectedTab == tab ? 8 : 0)
                    {
                        Image(tab.rawValue)
                            .frame(width: 24, height: 24)
                            .colorMultiply (selectedTab == tab ? CustomColors.skyBlue : CustomColors.grey)
                        Text(selectedTab == tab ? LocalizedStringKey(tabText[tab] ?? ""):"")
                            .font(Fonts.NunBold_14)
                            .foregroundColor(CustomColors.skyBlue)
                            .lineLimit(1)
                    }
                }
                .padding(12)
                .frame(maxWidth: selectedTab == tab ? .infinity : 65)
                .background(selectedTab == tab ? CustomColors.blue.opacity(0.1) : .white)
                .cornerRadius(12)
                .onTapGesture {
                     withAnimation(.easeIn(duration: 0.35)){
                         selectedTab = tab
                     }
                }
            }
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        .frame(width: .infinity, alignment: .center)
        .background(.white)
        .overlay(Rectangle().frame(height: 1).foregroundColor(CustomColors.backgroundWhite), alignment: .top)
    }
}

struct MyTabBar_Previews: PreviewProvider {
     static var previews: some View {
         MyTabBar(selectedTab: .constant(.profile))
     }
}
