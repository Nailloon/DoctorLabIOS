//
//  DoctorsAppointment.swift
//  DoctorLabIOS
//
//  Created by user225687 on 11/16/23.
//

import SwiftUI
struct DoctorAppointment: View{
    var doctor: String
    var doctorCategory: String
    var day: String
    var time: String
    var body: some View{
        VStack(alignment: .center, spacing: PadSpacing.bigSpace) {
            HStack(){
                ZStack(){
                    Circle()
                        .fill(Color.white)
                        .frame(width: SizeManager.doctorIconSize, height: SizeManager.doctorIconSize)
                    
                    Image("doctoR1")
                        .resizable()
                        .aspectRatio(contentMode: .fill).frame(width: SizeManager.doctorIconSize, height: SizeManager.doctorIconSize)
                        .scaleEffect(1.2)
                        .offset(y: 9)
                        .clipped()
                        .clipShape(Circle())
                }
                VStack(alignment: .leading, spacing: PadSpacing.smallSpace) {
                    Text(LocalizedStringKey(doctor)).font(Fonts.PopBold_16).foregroundColor(.white)
                    Text(LocalizedStringKey(doctorCategory)).font(Fonts.PopMed_14).foregroundColor(CustomColors.nearWhite)
                }
                Spacer()
                    Image("arrow-right").frame(width: SizeManager.mediumIconSize, height: SizeManager.mediumIconSize)
            }
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.white.opacity(0.15))
            HStack(alignment: .top, spacing: PadSpacing.normalSpace){
                Image("calendar-2").frame(width: SizeManager.smallIconSize,height: SizeManager.smallIconSize)
                Text(LocalizedStringKey(day)).font(Fonts.PopMed_12).foregroundColor(.white)
                Image("clock").frame(width: SizeManager.smallIconSize, height: SizeManager.smallIconSize)
                Text(LocalizedStringKey(time)).font(Fonts.PopMed_12).foregroundColor(.white)
            }
        }
        .padding(PadSpacing.hugeSpace)
        .frame(width: SizeManager.windowWidth, alignment: .top)
        .background(CustomColors.blue)
        .cornerRadius(12)
    }
}
struct DoctorAppointment_Previews: PreviewProvider {
    static var previews: some View {
        DoctorAppointment(doctor: "drsyahir", doctorCategory: "generaldoctor", day: "dayJune", time: "timeJune")
    }
}
