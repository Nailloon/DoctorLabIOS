//
//  FontsFile.swift
//  DoctorLabIOS
//
//  Created by user225687 on 11/16/23.
//
import SwiftUI
struct Fonts {
    static let hello = Font.custom("Poppins", size: 16)
    static let hi = Font.custom("Poppins", size: 20)
        .weight(.bold)
    static let doctorName = Font.custom("Poppins", size: 16)
        .weight(.bold)
    static let doctorCategory = Font.custom("Poppins", size: 14)
    static let details = Font.custom("Poppins", size: 12)
    static let categories = Font.custom("Poppins", size: 15)
    static let nearDoctor = Font.custom("Poppins", size: 16)
        .weight(.semibold)
    static let underMenuText = Font.custom("Nunito", size: 14)
    .weight(.bold)
}
