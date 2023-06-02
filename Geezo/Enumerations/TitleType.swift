//
//  TitleType.swift
//  Geezo
//
//  Created by Aurocheg on 2.06.23.
//

import SwiftUI

enum TitleType {
    case huge
    case large
    case medium(FontWeights)
    case small
    
    var font: Font? {
        switch self {
        case .huge:
            return Fonts.roboto(.bold, 48.0).font
        case .large:
            return Fonts.roboto(.bold, 36.0).font
        case .medium(let fontWeights):
            return Fonts.roboto(fontWeights, 28.0).font
        case .small:
            return Fonts.roboto(.bold, 22.0).font
        }
    }
}
