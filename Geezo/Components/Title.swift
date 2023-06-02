//
//  Title.swift
//  Geezo
//
//  Created by Aurocheg on 2.06.23.
//

import SwiftUI

struct Title: View {
    var titleType: TitleType
    var text: String
    var color: Color
    
    var body: some View {
        Text(text)
            .font(titleType.font)
            .foregroundColor(color)
    }
}
