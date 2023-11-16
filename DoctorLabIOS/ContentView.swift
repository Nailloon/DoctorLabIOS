//
//  ContentView.swift
//  DoctorLabIOS
//
//  Created by user225687 on 11/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            WelcomeBanner(userName: "James")
        }.frame(width: SizeManager.allScreenWidth, height: SizeManager.allScreenHeight)
        .background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
