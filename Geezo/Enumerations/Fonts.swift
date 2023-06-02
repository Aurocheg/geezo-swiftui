//
//  Fonts.swift
//  Geezo
//
//  Created by Aurocheg on 2.06.23.
//

import SwiftUI

private enum FontFileNames {
    static let robotoRegular = "Roboto-Regular"
    static let robotoMedium = "Roboto-Medium"
    static let robotoBold = "Roboto-Bold"
    static let robotoBlack = "Roboto-Black"
    
    static let montserratRegular = "Montserrat-Regular"
    static let montserratMedium = "Montserrat-Medium"
    static let montserratSemiBold = "Montserrat-SemiBold"
}

enum FontWeights {
    case regular
    case medium
    case bold
    case semibold
    case black
}

enum Fonts {
    case roboto(FontWeights, CGFloat)
    case montserrat(FontWeights, CGFloat)
    
    var font: Font? {
        switch self {
        case .roboto(let fontWeights, let size):
            switch fontWeights {
            case .regular:
                return Font.custom(FontFileNames.robotoRegular, size: size)
            case .medium:
                return Font.custom(FontFileNames.robotoMedium, size: size)
            case .bold:
                return Font.custom(FontFileNames.robotoBold, size: size)
            case .black:
                return Font.custom(FontFileNames.robotoBlack, size: size)
            default:
                return nil
            }
        case .montserrat(let fontWeights, let size):
            switch fontWeights {
            case .regular:
                return Font.custom(FontFileNames.montserratRegular, size: size)
            case .medium:
                return Font.custom(FontFileNames.montserratMedium, size: size)
            case .semibold:
                return Font.custom(FontFileNames.montserratSemiBold, size: size)
            default:
                return nil
            }
        }
    }
}
