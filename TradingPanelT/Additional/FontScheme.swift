//
//  FontScheme.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kMontserratSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratSemiBold, size: size)
    }

    static func kMontserratRomanMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRomanMedium, size: size)
    }

    static func kMontserratRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRegular, size: size)
    }

    static func kBritanicaRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kBritanicaRegular, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kMontserratSemiBold":
            result = self.kMontserratSemiBold(size: size)
        case "kMontserratRomanMedium":
            result = self.kMontserratRomanMedium(size: size)
        case "kMontserratRegular":
            result = self.kMontserratRegular(size: size)
        case "kBritanicaRegular":
            result = self.kBritanicaRegular(size: size)
        default:
            result = self.kMontserratSemiBold(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratSemiBold: String = "Montserrat-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRomanMedium: String = "MontserratRoman-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRegular: String = "Montserrat-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kBritanicaRegular: String = "Britanica-Regular"
    }
}
