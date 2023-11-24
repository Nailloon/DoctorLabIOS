//
//  ContentView.swift
//  DoctorLabIOS
//
//  Created by user225687 on 11/16/23.
//

import SwiftUI
struct ContentView: View {
    @State private var selectedTab: Tab = .home

    var body: some View{
        ZStack{
            VStack {
                TabView(selection: $selectedTab){
                    ForEach(Tab.allCases, id: \.rawValue) { tab in
                        getPage(for: tab)
                            .tag(tab)
                    }
                }
            }
            VStack {
                Spacer()
                MyTabBar(selectedTab: $selectedTab)
            }
        }
    }
    
        @ViewBuilder
       func getPage(for tab: Tab) -> some View {
           switch tab {
           case .home:
               HomeView()
           case .Calendar:
               CalendarView()
           case .chat:
               ChatView()
           case .profile:
               ProfileView()
           }
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
